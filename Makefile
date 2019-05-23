# **************************************************************************** #
#                                                                              #
#                                                         :::      ::::::::    #
#    Makefile                                           :+:      :+:    :+:    #
#                                                     +:+ +:+         +:+      #
#    By: alegent <alegent@student.42.fr>            +#+  +:+       +#+         #
#                                                 +#+#+#+#+#+   +#+            #
#    Created: 2015/02/13 12:17:39 by alegent           #+#    #+#              #
#    Updated: 2017/04/26 15:12:12 by alegent          ###   ########.fr        #
#                                                                              #
# **************************************************************************** #

# This is a typical Makefile, re-usable anytime you want to compil C project.
# All is in quiet for now, thank to do all the completion that needed for
# specify project

# Define name of program here
NAME= libft.a

# SRC BLOC
# Define all the .c file in the variable SRC NAME
SRC_PATH= Sources/
SRC_NAME= libft/ft_isalnum.c \
          libft/ft_isalpha.c \
          libft/ft_isascii.c \
          libft/ft_isblank.c \
          libft/ft_isdigit.c \
          libft/ft_isprint.c \
          libft/ft_bzero.c \
          libft/ft_memccpy.c \
          libft/ft_memchr.c \
          libft/ft_memcmp.c \
          libft/ft_memcpy.c \
          libft/ft_memdel.c \
          libft/ft_memset.c \
          libft/ft_putchar.c \
          libft/ft_putchar_fd.c \
          libft/ft_putendl.c \
          libft/ft_putendl_fd.c \
          libft/ft_putnbr.c \
          libft/ft_putnbr_fd.c \
          libft/ft_putstr.c \
          libft/ft_putstr_fd.c \
          libft/ft_strcat.c \
          libft/ft_strchr.c \
          libft/ft_strclr.c \
          libft/ft_strcmp.c \
          libft/ft_strcpy.c \
          libft/ft_strdel.c \
          libft/ft_strdup.c \
          libft/ft_strequ.c \
          libft/ft_striter.c \
          libft/ft_striteri.c \
          libft/ft_strjoin.c \
          libft/ft_strlen.c \
          libft/ft_strclen.c \
          libft/ft_strmap.c \
          libft/ft_strmapi.c \
          libft/ft_strncat.c \
          libft/ft_strncmp.c \
          libft/ft_strncpy.c \
          libft/ft_strnequ.c \
          libft/ft_strnew.c \
          libft/ft_strnstr.c \
          libft/ft_strrchr.c \
          libft/ft_strsplit.c \
          libft/ft_strstr.c \
          libft/ft_strsub.c \
          libft/ft_strtrim.c \
          libft/ft_strreplace.c \
          libft/ft_atoi.c \
          libft/ft_digitlen.c \
          libft/ft_itoa.c \
          libft/ft_tolower.c \
          libft/ft_toupper.c \
          libft/get_next_line.c \
          libft/fatal_error.c \
          list/node_new.c \
          list/node_free.c \
          list/list_new.c \
          list/list_free.c \
          list/list_append.c \
          list/list_first.c \
          list/list_last.c \
          list/list_first_index.c \
          list/list_last_index.c \
          list/list_entry_at.c \
          list/list_contains.c \
          list/list_for_each.c \
          list/list_map.c \
          list/list_filter.c \
          list/list_to_array.c \
          list/list_from_array.c \
          list/list_strsplit.c \
          list/list_reverse.c \
          list/list_remove.c \
          list/list_remove_at.c \
          list/list_remove_all.c

SRC= $(addprefix $(SRC_PATH), $(SRC_NAME))

# OBJ BLOC
#Do nothing here
OBJ_PATH= obj/
OBJ_NAME= $(SRC_NAME:.c=.o)
OBJ= $(addprefix $(OBJ_PATH), $(OBJ_NAME))

# GCC BLOC
#GCC flag, you don't have to modify this (but you're free to go)
GCC= clang -Wall -Wextra -Werror

# INCLUDE BLOC
# Don't forget to include the other librarie that yo use
INC_LIB=
INC_PATH= Sources/
INC= -I $(INC_LIB) -I $(INC_PATH)

# Once again, don't forget to includes library that you use !
LIB=

# FRAMEWORK BLOC
# Don't forget to add framework that you need !
FRAMEWORK= 

all: $(NAME)

$(NAME): $(OBJ)
	@ar rc $(NAME) $(OBJ)
	@ranlib $(NAME)
	@echo "$(NAME) has been created."

$(OBJ_PATH)%.o: $(SRC_PATH)%.c
	@mkdir -p $(OBJ_PATH)/{libft,list}
	$(GCC) -I $(INC_PATH) -o $@ -c $<

clean:
	@rm -rf $(OBJ)
	@rm -rf $(OBJ_PATH)
	@echo "$(NAME) objects files are deleted."

fclean: clean
	@rm -rf $(NAME)
	@echo "$(NAME) are deleted."

re: fclean all

.PHONY: clean fclean re
