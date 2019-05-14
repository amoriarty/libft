/* ************************************************************************** */
/*                                                                            */
/*                                                        :::      ::::::::   */
/*   ft_lstmap.c                                        :+:      :+:    :+:   */
/*                                                    +:+ +:+         +:+     */
/*   By: alegent <alegent@student.42.fr>            +#+  +:+       +#+        */
/*                                                +#+#+#+#+#+   +#+           */
/*   Created: 2015/01/14 14:20:46 by alegent           #+#    #+#             */
/*   Updated: 2015/01/14 14:27:37 by alegent          ###   ########.fr       */
/*                                                                            */
/* ************************************************************************** */

#include "libft.h"

/// Convert a list into a new one by applying `f`
/// @param lst Head pointer of the list
/// @param f Function to convert each node
/// @returns Newly allocate list, with converted node
t_list				*ft_lstmap(t_list *lst, t_list *(*f)(t_list *elem))
{
	t_list			*new;

	if (lst && *f)
	{
		new = (f)(lst);
		if (new && lst->next)
			new->next = ft_lstmap(lst->next, f);
		return (new);
	}
	return (NULL);
}
