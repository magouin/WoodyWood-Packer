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

void write_woody(void *file, size_t size)
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

size_t	find_gap(Elf64_Ehdr *hdr, void *file, size_t section_text_offset, size_t *segment_vaddr	)
{
	int	nbr;
	size_t	gap;
	Elf64_Phdr *p_hdr_next;
	Elf64_Phdr *p_hdr;

	nbr = 0;
	while (nbr < hdr->e_phnum)
	{
		p_hdr = file + hdr->e_phoff + nbr * hdr->e_phentsize;
		printf("offset : %p - size : %lX\n", (void*)p_hdr->p_offset, p_hdr->p_filesz);
		printf("vaddr : %lX - paddr : %lX\n", p_hdr->p_vaddr, p_hdr->p_paddr);
		// if (nbr == 2)
		// {

		if (p_hdr->p_offset <= section_text_offset && p_hdr->p_offset + p_hdr->p_filesz >= section_text_offset)
		{
			printf("program of .text -\n");
			p_hdr->p_flags |= PF_W;
			p_hdr->p_flags |= PF_W;
			p_hdr_next = (Elf64_Phdr *)(file + hdr->e_phoff + (nbr + 1) * hdr->e_phentsize);
			gap = p_hdr->p_offset + p_hdr->p_filesz;
			// *segment_vaddr = p_hdr_next->p_offset - (p_hdr->p_offset + p_hdr->p_filesz);
			*segment_vaddr = p_hdr->p_vaddr;
			p_hdr->p_filesz = p_hdr_next->p_offset - p_hdr->p_offset;
			p_hdr->p_memsz = p_hdr_next->p_offset - p_hdr->p_offset;
			printf("offset n: %lx -> %lx\noffset n + 1: %lx -> %lx\n", p_hdr->p_offset, p_hdr->p_offset + p_hdr->p_filesz, p_hdr_next->p_offset, p_hdr_next->p_offset + p_hdr_next->p_filesz);
			return (gap);
		}
		if (nbr == hdr->e_phnum - 1)
		{
		}
		// }
		printf("\n");
		nbr++;
	}
	return (0);
}

size_t	find_st_offset(Elf64_Ehdr *hdr, void *file, void *str_tab)
{
	int	nbr;
	Elf64_Shdr	*s_hdr;

	nbr = 0;
	while (nbr < hdr->e_shnum)
	{
		s_hdr = file + hdr->e_shoff + nbr * hdr->e_shentsize;
		if (ft_strequ(s_hdr->sh_name + str_tab, ".text"))
		{
			printf("section text offset : %p\n", (void*)s_hdr->sh_offset);
			return (s_hdr->sh_offset);
		}
		printf("section : %s - offset : %p - size : %lu\n", (char*)(s_hdr->sh_name + str_tab), (void*)s_hdr->sh_offset, s_hdr->sh_size);
		nbr++;
	}
	return (0);
}

int main(int ac, char **av)
{
	// print_maps();

	void	*file;
	Elf64_Ehdr	*hdr;
	void	*str_tab;
	size_t size;
	size_t	section_text_offset;
	size_t	segment_vaddr;
	size_t gap;


	char shellcode[] = 	 "\x31\xc0\x48\xbb\xd1\x9d\x96\x91\xd0\x8c\x97\xff\x48\xf7\xdb\x53\x54\x5f\x99\x52\x57\x54\x5e\xb0\x3b\x0f\x05";
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
	section_text_offset = find_st_offset(hdr, file, str_tab);

	gap = find_gap(hdr, file, section_text_offset, &segment_vaddr);
	printf("found gap of size %lX at address : %lx\n", segment_vaddr, gap);
	ft_memcpy(file + gap, shellcode, sizeof(shellcode));
	hdr->e_entry = (size_t)(gap + segment_vaddr);
	write_woody(file, size + 1000);
	return (0);
}
