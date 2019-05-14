/* ************************************************************************** */
/*                                                                            */
/*                                                        :::      ::::::::   */
/*   ft_strlcat.c                                       :+:      :+:    :+:   */
/*                                                    +:+ +:+         +:+     */
/*   By: alegent <alegent@student.42.fr>            +#+  +:+       +#+        */
/*                                                +#+#+#+#+#+   +#+           */
/*   Created: 2014/11/17 11:01:40 by alegent           #+#    #+#             */
/*   Updated: 2015/01/03 15:49:13 by alegent          ###   ########.fr       */
/*                                                                            */
/* ************************************************************************** */

#include "libft.h"

/// Size-bounded string copying and concatenation
/// @param dst Destination string
/// @param src Source string
/// @param size Size to copy
/// @returns Size to the new destination string
size_t			ft_strlcat(char *dst, const char *src, size_t size)
{
	size_t		dst_len;
	size_t		src_len;

	dst_len = ft_strlen(dst);
	src_len = ft_strlen(src);
	if (size <= dst_len)
		return (size + src_len);
	else
		ft_strncat(dst, src, size - dst_len - 1);
	return (dst_len + src_len);
}
