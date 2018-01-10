#ifndef WOODY_H
# define WOODY_H

#include <stdio.h>
#include <libft.h>
#include <stdlib.h>
# define _GNU_SOURCE         /* See feature_test_macros(7) */
# include <unistd.h>
# include <sys/syscall.h>
#include <sys/mman.h>


# ifdef __APPLE__
#  include <perso.h>
		long syscall(long number, ...);
# else
#  include <elf.h>
# endif

#endif
