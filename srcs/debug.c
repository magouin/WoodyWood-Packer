#include <woody.h>

static void	print_as_char(const char *start, size_t size, size_t max)
{
	size_t	i;

	i = 0;
	printf("|");
	while (i < size && i < max)
	{
		if (ft_isprint(start[i]))
			printf("%c", start[i]);
		else
			printf(".");
		i++;
	}
	printf("|");
}

static void	print_as_bytes(unsigned const char *start, size_t size, size_t max)
{
	size_t	i;

	i = 0;
	while (i < size && i < max)
	{
		printf("%02x ", start[i]);
		i++;
		if (i % 8 == 0)
			printf(" ");
	}
	if (max < size)
	{
		if (max < 8)
			printf("%*c", ((int)size - (int)max) * 3 + 2, ' ');
		else
			printf("%*c", ((int)size - (int)max) * 3 + 1, ' ');
	}
}

void print_memory(const void *start, size_t size)
{
	size_t	i;

	i = 0;
	while (i < size)
	{
		printf("%08lx ", (unsigned long int)(start + i));
		print_as_bytes((unsigned char*)start + i, 16, size - i);
		print_as_char(start + i, 16, size - i);
		i += 16;
		printf("\n");
	}
	printf("%08lx \n", (unsigned long int)(start + size));
}
