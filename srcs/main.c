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
		if ((ret = mmap(0, buf.st_size + 1000, PROT_READ | PROT_WRITE, MAP_PRIVATE, fd, 0)) == MAP_FAILED)
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

void print_maps()
{
	char buffer[4000];
	int fd = open("/proc/self/maps", O_RDONLY);
	int r = read(fd, buffer, 3999);
	buffer[r] = '\0';
	printf("%s\n", buffer);
}

int main(int ac, char **av)
{
	print_maps();

	void	*file;
	Elf64_Ehdr	*hdr;
	Elf64_Shdr	*sections;
	void	*str_tab;
	Elf64_Shdr	*s_hdr;
	Elf64_Phdr	*p_hdr;
	size_t size;
	void	*section_text_offset;
char shellcode[] = "\xeb\x19\x31\xc0\xb0\x04\x31\xdb"
                   "\xb3\x01\x59\x31\xd2\xb2\x12\xcd"
                   "\x80\x31\xc0\xb0\x01\x31\xdb\xb3"
                   "\x01\xcd\x80\xe8\xe2\xff\xff\xff"
                   "\x20\x79\x30\x75\x20\x73\x70\x33"
                   "\x34\x6b\x20\x31\x33\x33\x37\x20"
                   "\x3f\x20";

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
	hdr->e_entry = (size_t)(size);
	str_tab = get_shstrtab(file, hdr);

	int	nbr = 0;
	while (nbr < hdr->e_shnum)
	{
		s_hdr = file + hdr->e_shoff + nbr * hdr->e_shentsize;
		if (ft_strequ(s_hdr->sh_name + str_tab, ".text"))
		{
			printf("section text offset : %p\n", (void*)s_hdr->sh_offset);
			section_text_offset = s_hdr->sh_offset;
		}
		if (nbr == hdr->e_shnum - 1)
		{
		}
		printf("section : %s - offset : %p - size : %d\n", s_hdr->sh_name + str_tab, (void*)s_hdr->sh_offset, s_hdr->sh_size);
		nbr++;
	}

	nbr = 0;
	while (nbr < hdr->e_phnum)
	{
		p_hdr = file + hdr->e_phoff + nbr * hdr->e_phentsize;
		printf("offset : %p - size : %X\n", (void*)p_hdr->p_offset, p_hdr->p_filesz);
		printf("vaddr : %p - paddr : %X\n", p_hdr->p_vaddr, p_hdr->p_paddr);
		// if (nbr == 2)
		// {
		if (p_hdr->p_offset <= section_text_offset && p_hdr->p_offset + p_hdr->p_filesz >= section_text_offset)
		{
			printf("program of .text -\n");
			p_hdr->p_flags |= PF_W;
			p_hdr->p_flags |= PF_W;
		}
		if (nbr == hdr->e_phnum - 1)
		{
		}
		// }
		printf("\n");
		nbr++;
	}
	ft_memcpy(file + size, shellcode, sizeof(shellcode));
	write_woody(file, size + 1000);
}
