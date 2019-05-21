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



/// Get next line of file descriptor
/// @param fd File descriptor to read
/// @param line String to save next line
/// @returns 1 if line has been read, 0 if reading is over or ERROR (-1) if an error occured.
int     get_next_line(int const fd, char **line)
{
    size_t      length;
    char        *carriage;
    char        buffer[BUFF_SIZE + 1];
    static char *remaining;

    ft_bzero(buffer, BUFF_SIZE + 1);
    carriage = remaining ? ft_strchr(remaining, EOL) : NULL;
    remaining = remaining ? remaining : ft_strnew(0);
    if (carriage)
    {
        *carriage = 0;
        *line = ft_strdup(remaining);
        ft_strreplace(&remaining, ft_strdup(carriage + 1));
        return (1);
    }
    length = read(fd, buffer, BUFF_SIZE);
    if (length == ERROR)
        return (ERROR);
    if (length == 0)
        return (0);
    ft_strreplace(&remaining, ft_strjoin(remaining, buffer));
    return (get_next_line(fd, line));
}
