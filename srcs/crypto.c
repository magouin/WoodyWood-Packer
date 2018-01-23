#include <woody.h>

void	print_key(unsigned char	*buffer)
{
	int	i;

	printf("key : ");
	i = 0;
	while (i < KEY_SIZE)
	{
		printf("%02X", (unsigned)(buffer[i]));
		i++;
	}
	printf("\n");
}

unsigned char	*get_key(void)
{
	int		fd;
	unsigned char	*buffer;

	buffer = malloc(KEY_SIZE);
	fd = open("/dev/urandom", O_RDONLY);
	if (fd == -1)
		return (0);
	read(fd, buffer, KEY_SIZE);
	print_key(buffer);
	return (buffer);
}

void	crypt_xor(char	*addr, size_t size, unsigned char *key, void *file)
{
	size_t	i;

	unsigned char *cp;

	cp = (unsigned char *)addr;
	i = 0;
	while (i < size)
	{
		if (i < 10)
		{
			printf("crypting byte [%02x] at offset %#lx with key [%02x], result :[%02x]\n", cp[i], (void*)addr  + i - file, key[i % KEY_SIZE], cp[i] ^ key[i % KEY_SIZE]);
		}
		addr[i] = addr[i] ^* key[i % KEY_SIZE];
		i++;
	}
}
