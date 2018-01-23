#include <woody.h>
#include <sys/types.h>
#include <sys/stat.h>

void write_woody(void *file, size_t size)
{
	int fd = open("woody", O_CREAT | O_WRONLY, 0744);

	write(fd, file, size);
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
	unsigned char	*key;


	void	*origin;
	size_t	size_origin;
	Elf64_Shdr	*shdr_text_origin;


	key = get_key();

	if (ac != 2 && ac != 3)
	{
		dprintf(2, "usage: %s program [origin]\n", av[0]);
		return (1);
	}
	if ((file = open_file(av[1], av[0], &size)) == NULL)
		return (2);
	if (ac == 3)
	{
		if ((origin = open_file(av[2], av[0], &size_origin)) == NULL)
			return (2);
	}
	else
	{
		if ((origin = open_file("./exec", av[0], &size_origin)) == NULL)
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
	str_tab = get_shstrtab(file, hdr);
	shdr_text_file = find_st_hdr(hdr, file, str_tab);


	gap = find_gap(hdr, file, shdr_text_file->sh_offset, &segment_vaddr, shdr_text_origin->sh_size);
	gap += 16 - gap % 16;

	memory_replace(origin + shdr_text_origin->sh_offset, 0x22222222, hdr->e_entry, shdr_text_origin->sh_size);
	memory_replace(origin + shdr_text_origin->sh_offset, 0x33333333, (unsigned int)KEY_SIZE, shdr_text_origin->sh_size);
	memory_replace(origin + shdr_text_origin->sh_offset, 0x44444444, segment_vaddr + shdr_text_file->sh_offset, shdr_text_origin->sh_size);
	memory_replace(origin + shdr_text_origin->sh_offset, 0x55555555, shdr_text_file->sh_size, shdr_text_origin->sh_size);
	ft_memcpy(file + gap, key, KEY_SIZE);
	ft_memcpy(file + gap + KEY_SIZE, origin + shdr_text_origin->sh_offset, shdr_text_origin->sh_size);

	crypt_xor(file + shdr_text_file->sh_offset, shdr_text_file->sh_size, key);
	hdr->e_entry = (size_t)(gap + segment_vaddr + KEY_SIZE);
	write_woody(file, size);
	return (0);
}
