LIB= libc.a

SRCS= srcs/ft_strlen.c

OBJT= ft_strlen.o

GCC= gcc -Wall -Werror -Wextra

all: make clean

make:
	$(GCC) -c $(SRCS) -I includes -o $(LIB)
	ar -q $(OBJT) $(LIB)

clean:
	rm $(OBJT)

fclean:
	rm $(LIB)

re: fclean all
