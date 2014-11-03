NAME=	libft.a

SRCS=	srcs/ft_putchar.c \
		srcs/ft_putstr.c \
		srcs/ft_putnbr.c \
		srcs/ft_strlen.c \
		srcs/ft_strdup.c \
		srcs/ft_strcpy.c \
		srcs/ft_strncpy.c \
		srcs/ft_strcat.c \
		srcs/ft_strncat.c \
		srcs/ft_atoi.c \
		srcs/ft_strcmp.c \
		srcs/ft_strncmp.c \
		srcs/ft_isalpha.c

OBJT=	ft_putchar.o \
		ft_putstr.o \
		ft_putnbr.o \
		ft_strlen.o \
		ft_strdup.o \
		ft_strcpy.o \
		ft_strncpy.o \
		ft_strcat.o \
		ft_strncat.o \
		ft_atoi.o \
		ft_strcmp.o \
		ft_strncmp.o \
		ft_isalpha.o

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
