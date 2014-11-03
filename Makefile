NAME=	libft.a

SRCS=	srcs/ft_putchar.c \
		srcs/ft_putstr.c \
		srcs/ft_putnbr.c \
		srcs/ft_strlen.c

OBJT=	ft_putchar.o \
		ft_putstr.o \
		ft_putnbr.o \
		ft_strlen.o

GCC= gcc -Wall -Werror -Wextra

all: $(NAME) clean

$(NAME):
	$(GCC) -c $(SRCS) -I includes
	ar r $(NAME) $(OBJT)

clean:
	rm $(OBJT)

fclean:
	rm $(NAME)

re: fclean all
