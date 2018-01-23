#include <woody.h>


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
		p_hdr->p_flags |= PF_W;
		if (p_hdr->p_offset <= section_text_offset && p_hdr->p_offset + p_hdr->p_filesz >= section_text_offset)
		{
			p_hdr_next = file + hdr->e_phoff + (nbr + 1) * hdr->e_phentsize;
			printf("found gap at : %lX, his size is  : %lX\n", p_hdr->p_offset + p_hdr->p_filesz, p_hdr_next->p_offset - (p_hdr->p_offset + p_hdr->p_filesz));
			printf("segment virtual and physical address : %lX and %lX\n", p_hdr->p_vaddr, p_hdr->p_paddr);
			gap = p_hdr->p_offset + p_hdr->p_filesz;
			*segment_vaddr = p_hdr->p_vaddr;
			p_hdr->p_filesz += shellcode_size;
			p_hdr->p_memsz += shellcode_size;
			return (gap + 8);
		}
		printf("\n");
		nbr++;
	}
	return (0);
}

char	*get_shstrtab(void *file, Elf64_Ehdr *hdr)
{
	Elf64_Shdr	*shstr_header;

	shstr_header = file + hdr->e_shoff + hdr->e_shstrndx * hdr->e_shentsize;
	return (file + shstr_header->sh_offset);
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
