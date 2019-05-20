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
# define TRUE 1
# define FALSE 0
# define SUCCESS 1
# define FAILURE 0
# define ERROR -1
# define BUFF_SIZE 2048
# include <unistd.h>
# include <stdlib.h>
# define EOL '\n'

typedef char	t_bool;

void    ft_bzero(void *buffer, size_t length);
void    *ft_memset(void *buffer, unsigned int character, size_t length);
void    *ft_memcpy(void *destination, const void *source, size_t length);
void    *ft_memccpy(void *destination, const void *source, int c, size_t length);
void    *ft_memmove(void *destination, const void *source, size_t length);
void    *ft_memchr(const void *source, unsigned int character, size_t length);
int     ft_memcmp(const void *left, const void *right, size_t length);
size_t  ft_strlen(const char *source);
char    *ft_strdup(const char *s1);
void    ft_putchar(char c);
void    ft_putstr(char const *s);
void    ft_putnbr(int n);
void    ft_putendl(char const *s);
void    ft_putchar_fd(char c, int fd);
void    ft_putstr_fd(char const *s, int fd);
void    ft_putendl_fd(char const *s, int fd);
void    ft_putnbr_fd(int n, int fd);
char    *ft_strcpy(char *dst, const char *src);
char    *ft_strncpy(char *dst, const char *src, size_t n);
char    *ft_strcat(char *s1, const char *s2);
char    *ft_strncat(char *s1, const char *s2, size_t n);
size_t  ft_strlcat(char *dst, const char *src, size_t n);
char    *ft_strchr(const char *s, int c);
char    *ft_strrchr(const char *s, int c);
char    *ft_strstr(const char *s1, const char *s2);
char    *ft_strnstr(const char *s1, const char *s2, size_t n);
int	    ft_atoi(const char *str);
int	    ft_strcmp(const char *s1, const char *s2);
int	    ft_strncmp(const char *s1, const char *s2, size_t n);
int	    ft_isalpha(int c);
int	    ft_isdigit(int c);
int	    ft_isalnum(int c);
int	    ft_isascii(int c);
int	    ft_isprint(int c);
int	    ft_isblank(int c);
int	    ft_toupper(int c);
int	    ft_tolower(int c);
void    *ft_memalloc(size_t size);
void    ft_memdel(void **ap);
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
char    *ft_itoa(int n);
char    *ft_strtrim(char const *s);
char    **ft_strsplit(char const *s, char c);
size_t  ft_digitlen(int n);
int	    get_next_line(const int fd, char **line);

#endif
