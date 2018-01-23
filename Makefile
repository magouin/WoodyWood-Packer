SRC_NAME = main.c \
			crypto.c \
			elf_funcs.c \
			file.c

SRC_ASM_NAME = main.s \

OBJ_PATH = ./obj/
OBJ_ASM_PATH = ./obj_asm/

INC_PATH = ./includes ./libft/includes

SRC_PATH = ./srcs/
SRC_ASM_PATH = ./asm/

NAME = woody_woodpacker
NAME_ASM = exec

CC = gcc
CFLAGS =  -Wextra -Wall -g

LFLAGS = -lft
LIB_DIR=./lib/

OBJ_NAME = $(SRC_NAME:.c=.o)
OBJ_ASM_NAME = $(SRC_ASM_NAME:.c=.o)

SRC = $(addprefix $(SRC_PATH),$(SRC_NAME))
OBJ = $(addprefix $(OBJ_PATH),$(OBJ_NAME))
OBJ_NAME = $(SRC_NAME:.c=.o)

SRC_ASM = $(addprefix $(SRC_ASM_PATH),$(SRC_ASM_NAME))
OBJ_ASM = $(addprefix $(OBJ_ASM_PATH),$(OBJ_ASM_NAME))
OBJ_ASM_NAME = $(SRC_ASM_NAME:.s=.o)

INC = $(addprefix -I,$(INC_PATH))

all : LIB_RULE $(NAME) $(NAME_ASM)

LIB_RULE:
	@mkdir -p $(LIB_DIR)

$(NAME) : $(OBJ)
	make -C libft
	$(CC) $(CFLAGS) $(OBJ) -L $(LIB_DIR) $(LFLAGS) -o $@

$(NAME_ASM) : $(OBJ_ASM)
	ld $(OBJ_ASM) -o $@  -e main -dynamic-linker /lib/x86_64-linux-gnu/ld-2.24.so -lc

$(OBJ_ASM_PATH)%.o: $(SRC_ASM_PATH)%.s
	mkdir -p $(OBJ_ASM_PATH)
	nasm -f elf64  -o $@ $<


$(OBJ_PATH)%.o: $(SRC_PATH)%.c
	mkdir -p $(OBJ_PATH)
	$(CC) $(CFLAGS) $(INC) -o $@ -c $<

clean:
	@rm -fv $(OBJ)
	@rm -fv $(OBJ_ASM)
	@rmdir -p $(OBJ_PATH) 2> /dev/null || true
	@rmdir -p $(OBJ_ASM_PATH) 2> /dev/null || true
	@make -C libft clean

fclean: clean
	@rm -fv $(NAME)
	@rm -fv $(NAME_ASM)
	@rm -fv woody
	@make -C libft fclean
	@rmdir lib 2> /dev/null || true

hello:
	nasm -f elf64 -o obj/hello.o asm/hello_world.s ; ld obj/hello.o -o hello

re: fclean all

.PHONY : all clean fclean re
