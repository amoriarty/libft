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

// MARK:- Boolean

typedef enum e_bool t_bool;
enum    e_bool
{
    FALSE,
    TRUE
};

// MARK:- Memory

void    ft_bzero(void *buffer, size_t length);
void    *ft_memset(void *buffer, unsigned int character, size_t length);
void    *ft_memcpy(void *destination, const void *source, size_t length);
void    *ft_memccpy(void *destination, const void *source, int c, size_t length);
void    *ft_memchr(const void *source, unsigned int character, size_t length);
int     ft_memcmp(const void *left, const void *right, size_t length);
void    ft_memdel(void **memory);

// MARK:- String

size_t  ft_strlen(const char *source);
size_t  ft_strclen(const char *source, char character);
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
char    *ft_strnew(size_t size);
void    ft_strdel(char **memory);
void    ft_strclr(char *string);
void    ft_striter(char *string, void (*function)(char *));
void    ft_striteri(char *string, void (*function)(unsigned int, char *));
char    *ft_strmap(char const *source, char (*function)(char));
char    *ft_strmapi(char const *source, char (*function)(unsigned int, char));
t_bool  ft_strequ(char const *left, char const *right);
t_bool  ft_strnequ(char const *left, char const *right, size_t length);
char    *ft_strsub(char const *source, unsigned int start, size_t length);
char    *ft_strjoin(char const *left, char const *right);
char    *ft_strtrim(char const *source);
char    **ft_strsplit(char const *source, char separator);
void    ft_strreplace(char **destination, char *source);

// MARK:- Charactere Testing

t_bool  ft_isupper(int character);
t_bool  ft_islower(int character);
t_bool  ft_isalpha(int character);
t_bool  ft_isdigit(int character);
t_bool  ft_isalnum(int character);
t_bool  ft_isascii(int character);
t_bool  ft_isprint(int character);
t_bool  ft_isblank(int character);

// MARK:- Character Conversion

int     ft_toupper(int character);
int     ft_tolower(int character);
int     ft_toint(char character);
char    ft_tochar(int number);

// MARK:- Integer / String Conversion

size_t  ft_digitlen(int number);
int     ft_abs(int number);
int     ft_atoi(const char *string);
char    *ft_itoa(int number);

// MARK:- Print

void    ft_putchar(char c);
void    ft_putstr(char const *s);
void    ft_putnbr(int n);
void    ft_putendl(char const *s);
void    ft_putchar_fd(char c, int fd);
void    ft_putstr_fd(char const *s, int fd);
void    ft_putendl_fd(char const *s, int fd);
void    ft_putnbr_fd(int n, int fd);

// MARK:- Files

typedef struct s_gnl t_gnl;
struct s_gnl {
    int     fd;
    char    *remaining;
};

int	    get_next_line(const int fd, char **line);

// MARK:- Errors

void    fatal_error(const char *message, ...);

#endif
