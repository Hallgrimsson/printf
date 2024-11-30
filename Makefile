NAME=libftprintf.a
SRC=ft_printf.c ft_printf_nums.c ft_printf_chars.c ft_printf_aux.c ft_printf_chars.c
OBJ=$(SRC:%.c=%.o)
CC = cc
CFLAGS = -Wall -Werror -Wextra

all: $(NAME)

$(NAME): $(OBJ)
	ar -rcs $@ $?

%.o: %.c
	$(CC) $(CFLAGS) -c $^ -o $@ 

clean:
	rm -rf $(OBJ)

fclean: clean
	rm -rf $(NAME)

re: fclean all

.PHONY: all clean fclean re