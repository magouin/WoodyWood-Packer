#include <woody.h>

void print_maps()
{
	char buffer[4000];
	int fd = open("/proc/self/maps", O_RDONLY);
	int r = read(fd, buffer, 3999);
	buffer[r] = '\0';
	printf("%s\n", buffer);
}

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
		exit(0);
	}
	*(unsigned int*)ptr = to_replace;
}
