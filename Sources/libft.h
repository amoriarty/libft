/* ************************************************************************** */
/*                                                                            */
/*                                                        :::      ::::::::   */
/*   libft.h                                            :+:      :+:    :+:   */
/*                                                    +:+ +:+         +:+     */
/*   By: alegent <alegent@student.42.fr>            +#+  +:+       +#+        */
/*                                                +#+#+#+#+#+   +#+           */
/*   Created: 2014/11/03 12:12:00 by alegent           #+#    #+#             */
/*   Updated: 2017/04/26 15:03:12 by alegent          ###   ########.fr       */
/*                                                                            */
/* ************************************************************************** */

#ifndef LIBFT_H
# define LIBFT_H
# include <unistd.h>
# include <stdlib.h>
# define EOL '\n'
# define BUFF_SIZE 2048
# define ERROR -1

typedef enum e_bool t_bool;
enum    e_bool
{
    FALSE,
    TRUE
};

void    ft_bzero(void *buffer, size_t length);
void    *ft_memset(void *buffer, unsigned int character, size_t length);
void    *ft_memcpy(void *destination, const void *source, size_t length);
void    *ft_memccpy(void *destination, const void *source, int c, size_t length);
void    *ft_memchr(const void *source, unsigned int character, size_t length);
int     ft_memcmp(const void *left, const void *right, size_t length);
void    *ft_memalloc(size_t size);
void    ft_memdel(void **memory);

size_t  ft_strlen(const char *source);
char    *ft_strdup(const char *source);
char    *ft_strcpy(char *destination, const char *source);
char    *ft_strncpy(char *destination, const char *source, size_t length);
char    *ft_strcat(char *left, const char *right);
char    *ft_strncat(char *left, const char *right, size_t length);
char    *ft_strchr(const char *source, int character);
char    *ft_strrchr(const char *source, int character);
char    *ft_strstr(const char *haystack, const char *needle);
char    *ft_strnstr(const char *haystack, const char *needle, size_t length);
int     ft_strcmp(const char *left, const char *right);
int     ft_strncmp(const char *left, const char *right, size_t length);

t_bool  ft_isupper(int character);
t_bool  ft_islower(int character);
t_bool  ft_isalpha(int character);
t_bool  ft_isdigit(int character);
t_bool  ft_isalnum(int character);
t_bool  ft_isascii(int character);
t_bool  ft_isprint(int character);
t_bool  ft_isblank(int character);

int     ft_toupper(int character);
int     ft_tolower(int character);
int     ft_toint(char character);
char    ft_tochar(int number);

size_t  ft_digitlen(int number);
int     ft_abs(int number);
int     ft_atoi(const char *string);
char    *ft_itoa(int number);

void    ft_putchar(char c);
void    ft_putstr(char const *s);
void    ft_putnbr(int n);
void    ft_putendl(char const *s);
void    ft_putchar_fd(char c, int fd);
void    ft_putstr_fd(char const *s, int fd);
void    ft_putendl_fd(char const *s, int fd);
void    ft_putnbr_fd(int n, int fd);

char    *ft_strnew(size_t size);
void    ft_strdel(char **as);
void    ft_strclr(char *s);
void    ft_striter(char *s, void(*f)(char *));
void    ft_striteri(char *s, void(*f)(unsigned int, char *));
char    *ft_strmap(char const *s, char (*f)(char));
char    *ft_strmapi(char const *s, char (*f)(unsigned int, char));
int	    ft_strequ(char const *s1, char const *s2);
int	    ft_strnequ(char const *s1, char const *s2, size_t n);
char    *ft_strsub(char const *s, unsigned int start, size_t len);
char    *ft_strjoin(char const *s1, char const *s2);

char    *ft_strtrim(char const *s);
char    **ft_strsplit(char const *s, char c);
int	    get_next_line(const int fd, char **line);

#endif
