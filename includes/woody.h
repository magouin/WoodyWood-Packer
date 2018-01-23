#ifndef WOODY_H
# define WOODY_H

# include <stdio.h>
# include <libft.h>
# include <stdlib.h>
# define _GNU_SOURCE         /* See feature_test_macros(7) */
# include <unistd.h>
# include <sys/syscall.h>
# include <sys/mman.h>

# define KEY_SIZE 64
# include <elf.h>

size_t	find_gap(Elf64_Ehdr *hdr, void *file, size_t section_text_offset, size_t *segment_vaddr, size_t shellcode_size);
char	*get_shstrtab(void *file, Elf64_Ehdr *hdr);
Elf64_Shdr	*find_st_hdr(Elf64_Ehdr *hdr, void *file, void *str_tab);
Elf64_Shdr	*find_st_orgin(void *file);

void print_maps();
void *open_file(char *file, char *argv, size_t *size);
void	memory_replace(void	*ptr, unsigned int to_search, unsigned int to_replace, size_t size);


unsigned char	*get_key(void);
void	crypt_xor(char	*addr, size_t size, unsigned char *key);

#endif
