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
		if ((ret = mmap(0, buf.st_size + 1000, PROT_READ | PROT_WRITE | PROT_EXEC, MAP_PRIVATE, fd, 0)) == MAP_FAILED)
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

size_t	find_gap(Elf64_Ehdr *hdr, void *file, size_t section_text_offset, size_t *segment_vaddr, size_t shellcode_size)
{
	int	nbr;
	size_t	gap;
	Elf64_Phdr *p_hdr;
	Elf64_Phdr *p_hdr_next;

	nbr = 0;
	while (nbr < hdr->e_phnum)
	{
		p_hdr = file + hdr->e_phoff + nbr * hdr->e_phentsize;
		if (p_hdr->p_offset <= section_text_offset && p_hdr->p_offset + p_hdr->p_filesz >= section_text_offset)
		{
			p_hdr_next = file + hdr->e_phoff + (nbr + 1) * hdr->e_phentsize;
			printf("found gap at : %lX, his size is  : %lX\n", p_hdr->p_offset + p_hdr->p_filesz, p_hdr_next->p_offset - (p_hdr->p_offset + p_hdr->p_filesz));
			printf("segment virtual and physical address : %lX and %lX\n", p_hdr->p_vaddr, p_hdr->p_paddr);
			// p_hdr->p_flags |= PF_W;
			gap = p_hdr->p_offset + p_hdr->p_filesz;
			// *segment_vaddr = p_hdr_next->p_offset - (p_hdr->p_offset + p_hdr->p_filesz);
			*segment_vaddr = p_hdr->p_vaddr;
			p_hdr->p_filesz += shellcode_size;
			p_hdr->p_memsz += shellcode_size;
			return (gap + 8);
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

Elf64_Shdr	*find_st_hdr(Elf64_Ehdr *hdr, void *file, void *str_tab)
{
	int	nbr;
	Elf64_Shdr	*s_hdr;

	nbr = 0;
	while (nbr < hdr->e_shnum)
	{
		s_hdr = file + hdr->e_shoff + nbr * hdr->e_shentsize;
		if (ft_strequ(s_hdr->sh_name + str_tab, ".text"))
			return (s_hdr);
		nbr++;
	}
	return (NULL);
}

Elf64_Shdr	*find_st_orgin(void *file)
{
	Elf64_Ehdr	*hdr;
	void	*str_tab;
	int	nbr;
	Elf64_Shdr	*s_hdr;

	hdr = (Elf64_Ehdr*)file;
	str_tab = get_shstrtab(file, hdr);

	nbr = 0;
	while (nbr < hdr->e_shnum)
	{
		s_hdr = file + hdr->e_shoff + nbr * hdr->e_shentsize;
		if (ft_strequ(s_hdr->sh_name + str_tab, ".text"))
			return (s_hdr);
		nbr++;
	}
	return (0);
}

void	memory_replace(void	*ptr, unsigned int to_search, unsigned int to_replace, size_t size)
{
	void	*end = ptr + size;
	while (*(unsigned int*)ptr != to_search && ptr < end)
	{
		ptr++;
	}
	if (ptr == end)
	{
		printf("Error !\n");
		return ;
	}
	printf("Replaced !\n");
	*(unsigned int*)ptr = to_replace;
}

int main(int ac, char **av)
{
	// print_maps();

	void	*file;
	Elf64_Ehdr	*hdr;
	void	*str_tab;
	size_t size;
	Elf64_Shdr	*shdr_text_file;
	size_t	segment_vaddr;
	size_t gap;


	void	*origin;
	size_t	size_origin;
	Elf64_Shdr	*shdr_text_origin;


	if (ac != 3)
	{
		dprintf(2, "usage: %s program origin\n", av[0]);
		return (1);
	}
	if ((file = open_file(av[1], av[0], &size)) == NULL)
	{
		return (2);
	}
	if ((origin = open_file(av[2], av[0], &size_origin)) == NULL)
	{
		return (2);
	}
	hdr = (Elf64_Ehdr*)file;
	hdr->e_type = ET_EXEC;
	if (hdr->e_ident[EI_CLASS] != ELFCLASS64)
	{
		dprintf(2, "%s: error: File architecture for %s not suported. x86_64 only\n", av[0], av[1]);
		return (3);
	}
	shdr_text_origin = find_st_orgin(origin);
	printf(".text of %s : %lx\n", av[2], shdr_text_origin->sh_offset);
	str_tab = get_shstrtab(file, hdr);
	shdr_text_file = find_st_hdr(hdr, file, str_tab);


	gap = find_gap(hdr, file, shdr_text_file->sh_offset, &segment_vaddr, shdr_text_origin->sh_size);
	printf("found gap of vaddr %lX at address : %lx\n", segment_vaddr, gap);
	printf("writing it at address : %lx\n", gap);
	memory_replace(origin + shdr_text_origin->sh_offset, 0x22222222, hdr->e_entry, shdr_text_origin->sh_size);
	memory_replace(origin + shdr_text_origin->sh_offset, 0x33333333, shdr_text_file->sh_offset, shdr_text_origin->sh_size);
	ft_memcpy(file + gap, origin + shdr_text_origin->sh_offset, shdr_text_origin->sh_size);
	hdr->e_entry = (size_t)(gap + segment_vaddr);
	write_woody(file, size);
	return (0);
}
