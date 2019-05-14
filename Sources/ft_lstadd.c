/* ************************************************************************** */
/*                                                                            */
/*                                                        :::      ::::::::   */
/*   ft_lstadd.c                                        :+:      :+:    :+:   */
/*                                                    +:+ +:+         +:+     */
/*   By: alegent <alegent@student.42.fr>            +#+  +:+       +#+        */
/*                                                +#+#+#+#+#+   +#+           */
/*   Created: 2014/11/26 14:28:05 by alegent           #+#    #+#             */
/*   Updated: 2014/11/26 14:40:54 by alegent          ###   ########.fr       */
/*                                                                            */
/* ************************************************************************** */

#include "libft.h"

/// Add a new node at the head of the list
/// @param alst Head pointer of the list
/// @param new Node to add
void				ft_lstadd(t_list **alst, t_list *new)
{
	new->next = *alst;
	*alst = new;
}
