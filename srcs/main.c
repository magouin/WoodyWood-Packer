#include <woody.h>

void *open_file(char *file, char *argv)
{
	int						fd;
	struct stat		buf;
	void					*ret;

	fd = open(file, O_RDONLY);

	if (fd == -1)
	{
		dprintf(2, "%s: error: Can't open file %s for reading.\n", argv, file);
		return (NULL);
	}
	if (syscall(SYS_fstat, fd, &buf) == -1)
	{
		close(fd);
		dprintf(2, "%s: error: Can't fstat %s\n", argv, file);
	}
	else
	{
		if ((ret = mmap(0, buf.st_size, PROT_READ, MAP_PRIVATE, fd, 0)) == MAP_FAILED)
		{
			close(fd);
			dprintf(2, "%s: error: Can't load %s in memory.\n", argv, file);
			return (NULL);
		}
	}
	close(fd);
	return (ret);
}


int main(int ac, char **av)
{
	void	*file;
	Elf64_Ehdr	hdr;
	Elf64_Shdr	*sections;
	Elf64_Shdr	shstr_header;


	if (ac != 2)
	{
		dprintf(2, "usage: %s program\n", av[0]);
		return (1);
	}
	if ((file = open_file(av[1], av[0])) == NULL)
	{
		return (2);
	}
	hdr = *(Elf64_Ehdr*)file;
	if (hdr.e_ident[EI_CLASS] != ELFCLASS64)
	{
		dprintf(2, "%s: error: File architecture for %s not suported. x86_64 only\n", av[0], av[1]);
		return (3);
	}
	sections = hdr.e_shoff + file;
	shstr_header = *(Elf64_Shdr*)(file + hdr.e_shoff + hdr.e_shstrndx * hdr.e_shentsize);
	printf("%d\n", shstr_header.sh_name);
	printf("%X\n", shstr_header.sh_entsize);
	printf("%s\n", file + shstr_header.sh_offset + 17 * shstr_header.sh_entsize);
}
