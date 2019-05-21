/* ************************************************************************** */
/*                                                                            */
/*                                                        :::      ::::::::   */
/*   ft_strsplit.c                                      :+:      :+:    :+:   */
/*                                                    +:+ +:+         +:+     */
/*   By: alegent <alegent@student.42.fr>            +#+  +:+       +#+        */
/*                                                +#+#+#+#+#+   +#+           */
/*   Created: 2014/11/08 16:01:39 by alegent           #+#    #+#             */
/*   Updated: 2017/04/18 18:52:13 by alegent          ###   ########.fr       */
/*                                                                            */
/* ************************************************************************** */

#include "libft.h"

static int		count_words(const char *s, char c)
{
	int		words;
	int		i;

	words = 0;
	i = 0;
	while (s[i])
	{
		while (s[i] == c)
			i++;
		if (s[i] != c && s[i] && ft_isprint(s[i]))
		{
			words++;
			while (s[i] != c && s[i])
				i++;
		}
	}
	return (words);
}

static size_t	get_word_length(const char *s, char c)
{
	size_t	length;
	int		i;

	length = 0;
	i = 0;
	while (s[i++] != c && s[i])
		length++;
	return (length);
}

#warning 'ft_strsplit' isn't update
/// Split a character into an array of string, seperated by c
/// @param source String to split
/// @param character Splitting character
/// @returns Array of splitting strings
char			**ft_strsplit(const char *source, char character)
{
	char	**tab;
	int		i;
	int		x;

	if (source == NULL)
		return (NULL);
	i = 0;
	if (!(tab = (char **)malloc(sizeof(char*) * (count_words(source, character) + 1))))
		return (NULL);
	while (*source)
	{
		while (*source == character)
			source++;
		if (*source != character && *source && ft_isprint(*source))
		{
			x = 0;
			if (!(tab[i] = ft_strnew(get_word_length(source, character))))
				return (NULL);
			while (*source != character && *source && ft_isprint(*source))
				tab[i][x++] = *source++;
			tab[i++][x] = '\0';
		}
	}
	tab[i] = 0;
	return (tab);
}
