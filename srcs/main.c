#include <woody.h>
#include <sys/types.h>
#include <sys/stat.h>
void *open_file(char *file, char *argv, size_t *size)
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
		*size = buf.st_size;
		if ((ret = mmap(0, buf.st_size, PROT_READ | PROT_WRITE, MAP_PRIVATE, fd, 0)) == MAP_FAILED)
		{
			close(fd);
			dprintf(2, "%s: error: Can't load %s in memory.\n", argv, file);
			return (NULL);
		}
	}
	close(fd);
	return (ret);
}

int write_woody(void *file, size_t size)
{
	int fd = open("woody", O_CREAT | O_WRONLY, 0744);

	write(fd, file, size);
}

char	*get_shstrtab(void *file, Elf64_Ehdr *hdr)
{
	Elf64_Shdr	*shstr_header;

	shstr_header = file + hdr->e_shoff + hdr->e_shstrndx * hdr->e_shentsize;
	return (file + shstr_header->sh_offset);
}

int main(int ac, char **av)
{
	void	*file;
	Elf64_Ehdr	*hdr;
	Elf64_Shdr	*sections;
	void	*str_tab;
	Elf64_Shdr	*s_hdr;
	size_t size;

	if (ac != 2)
	{
		dprintf(2, "usage: %s program\n", av[0]);
		return (1);
	}
	if ((file = open_file(av[1], av[0], &size)) == NULL)
	{
		return (2);
	}
	hdr = (Elf64_Ehdr*)file;
	if (hdr->e_ident[EI_CLASS] != ELFCLASS64)
	{
		dprintf(2, "%s: error: File architecture for %s not suported. x86_64 only\n", av[0], av[1]);
		return (3);
	}

	str_tab = get_shstrtab(file, hdr);

	int	nbr = 0;
	while (nbr < hdr->e_shnum)
	{
		s_hdr = file + hdr->e_shoff + nbr * hdr->e_shentsize;
		printf("%-2d - [%s] - offset : %p\n", nbr, s_hdr->sh_name + str_tab, s_hdr->sh_offset);
		if (ft_strequ(s_hdr->sh_name + str_tab, ".text"))
		{
			s_hdr->sh_flags |= SHF_WRITE;
		}
		nbr++;
	}
	write_woody(file, size);
}
