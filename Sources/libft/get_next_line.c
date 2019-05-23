/* ************************************************************************** */
/*                                                                            */
/*                                                        :::      ::::::::   */
/*   get_next_line.c                                    :+:      :+:    :+:   */
/*                                                    +:+ +:+         +:+     */
/*   By: alegent <alegent@student.42.fr>            +#+  +:+       +#+        */
/*                                                +#+#+#+#+#+   +#+           */
/*   Created: 2014/11/26 17:19:47 by alegent           #+#    #+#             */
/*   Updated: 2015/02/11 12:01:04 by alegent          ###   ########.fr       */
/*                                                                            */
/* ************************************************************************** */

#include "libft.h"
#include "list.h"

static t_gnl    *gnl_find_or_new(t_list *list, int const fd);
static t_bool   predicate(void *data, void *content);

/// Get next line of file descriptor
/// @param fd File descriptor to read
/// @param line String to save next line
/// @returns 1 if line has been read, 0 if reading is over or ERROR (-1) if an error occured.
int             get_next_line(int const fd, char **line)
{
    t_gnl           *gnl;
    ssize_t         length;
    char            *carriage;
    char            buffer[BUFF_SIZE + 1];
    static t_list   *list;

    ft_bzero(buffer, BUFF_SIZE + 1);
    list = list ? list : list_new();
    gnl = gnl_find_or_new(list, fd);
    carriage = ft_strchr(gnl->remaining, EOL);
    if (carriage)
    {
        *carriage = 0;
        *line = ft_strdup(gnl->remaining);
        ft_strreplace(&gnl->remaining, ft_strdup(carriage + 1));
        return (1);
    }
    length = read(fd, buffer, BUFF_SIZE);
    if (length == ERROR)
        return (ERROR);
    if (length == 0)
        return (0);
    ft_strreplace(&gnl->remaining, ft_strjoin(gnl->remaining, buffer));
    return (get_next_line(fd, line));
}

/// Find a GNL structure corresponding to file descriptor, or create and append a new one into the list
/// @param list List to find GNL structure in
/// @param fd File descriptor to look for
/// @returns GNL structure ready to, find in the list or newly created
static t_gnl    *gnl_find_or_new(t_list *list, int const fd)
{
    t_gnl   *gnl;

    gnl = (t_gnl *) list_first(list, (void *)&fd, predicate);
    if (gnl)
        return (gnl);
    gnl = (t_gnl *) malloc(sizeof(t_gnl));
    gnl->fd = fd;
    gnl->remaining = ft_strnew(0);
    list_append(list, gnl);
    return (gnl);
}

/// Predicate function to find the first GNL structure in the list
/// @param data User data passed to list_first function.
/// @param content GNL structure to compare
/// @returns True if the file descriptor correspond to current content, false otherwise.
static t_bool   predicate(void *data, void *content)
{
    int         fd = *(int *)data;
    t_gnl       *gnl = (t_gnl *)content;

    return (gnl->fd == fd);
}
