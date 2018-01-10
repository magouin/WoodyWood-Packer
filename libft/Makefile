# **************************************************************************** #
#                                                                              #
#                                                         :::      ::::::::    #
#    Makefile                                           :+:      :+:    :+:    #
#                                                     +:+ +:+         +:+      #
#    By: jcamhi <jcamhi@student.42.fr>              +#+  +:+       +#+         #
#                                                 +#+#+#+#+#+   +#+            #
#    Created: 2015/11/25 18:15:40 by jcamhi            #+#    #+#              #
#    Updated: 2018/01/10 17:04:34 by jcamhi           ###   ########.fr        #
#                                                                              #
# **************************************************************************** #

SRC_PATH = ./

SRC_NAME = ft_atoi.c \
		   ft_strrchr.c \
		   ft_alloc_str_with_char.c \
		   ft_strtoupper.c \
		   ft_itoa_ptr.c \
		   ft_go_on.c \
		   ft_itoa_base.c \
		   ft_itoa_base_ll.c \
		   ft_itoa_base_ull.c \
		   ft_alloc_str.c \
		   ft_bzero.c \
		   ft_isalnum.c \
		   ft_isalpha.c \
		   ft_isascii.c \
		   ft_isdigit.c \
		   ft_isprint.c \
		   ft_memalloc.c \
		   ft_memccpy.c \
		   ft_memchr.c \
		   ft_memcmp.c \
		   ft_memset.c \
		   ft_memmove.c \
		   ft_memdel.c \
		   ft_memcpy.c \
		   ft_putchar.c \
		   ft_putchar_fd.c \
		   ft_putstr.c \
		   ft_putstr_fd.c \
		   ft_strcat.c \
		   ft_strchr.c \
		   ft_strclr.c \
		   ft_strcmp.c \
		   ft_strcpy.c \
		   ft_strdel.c \
		   ft_strdup.c \
		   ft_strequ.c \
		   ft_striter.c \
		   ft_strjoin.c \
		   ft_strjoinaf1.c \
		   ft_strjoinaf2.c \
		   ft_strjoinaf12.c \
		   ft_strlcat.c \
		   ft_strlen.c \
		   ft_wstrlen.c \
		   ft_strmap.c \
		   ft_strmapi.c \
		   ft_strncat.c \
		   ft_strncmp.c \
		   ft_strnequ.c \
		   ft_strncpy.c \
		   ft_strnew.c \
		   ft_strnstr.c \
		   ft_strsplit.c \
		   ft_strstr.c \
		   ft_strsub.c \
		   ft_strtrim.c \
		   ft_tolower.c \
		   ft_toupper.c \
		   ft_putendl.c \
		   ft_putendl_fd.c \
		   ft_putnbr.c \
		   ft_putunbr.c \
		   ft_putnbr_fd.c \
		   ft_striteri.c \
		   ft_lstadd.c \
		   ft_lstdel.c \
		   ft_lstdelone.c \
		   ft_lstiter.c \
		   ft_lstnew.c \
		   ft_lstmap.c \
		   get_next_line.c \
		   ft_strrevcmp.c \
			 mallocp.c
OBJ_PATH = ./obj/

INC_PATH = ./includes/

LIB_PATH = ./

NAME = ../lib/libft.a

CC = gcc

CFLAGS = -Werror -Wall -Wextra -c -g

OBJ_NAME = $(SRC_NAME:.c=.o)

SRC = $(addprefix $(SRC_PATH),$(SRC_NAME))
OBJ = $(addprefix $(OBJ_PATH),$(OBJ_NAME))
LIB = $(addprefix -L,$(LIB_PATH))
INC = $(addprefix -I,$(INC_PATH))

all: $(NAME)

$(NAME): $(OBJ)
	ar r $(NAME) $(OBJ)
	ranlib $(NAME)

$(OBJ_PATH)%.o: $(SRC_PATH)%.c
	@mkdir -p $(OBJ_PATH)
	$(CC) $(CFLAGS) $(INC) -o $@ -c $<


clean:
	/bin/rm -f $(OBJ)
	/bin/rm -rf $(OBJ_PATH)

fclean: clean
	/bin/rm -f $(NAME)

re: fclean all
