/* ************************************************************************** */
/*                                                                            */
/*                                                        :::      ::::::::   */
/*   ft_lstiter.c                                       :+:      :+:    :+:   */
/*                                                    +:+ +:+         +:+     */
/*   By: alegent <alegent@student.42.fr>            +#+  +:+       +#+        */
/*                                                +#+#+#+#+#+   +#+           */
/*   Created: 2015/01/14 14:16:36 by alegent           #+#    #+#             */
/*   Updated: 2015/01/14 14:28:31 by alegent          ###   ########.fr       */
/*                                                                            */
/* ************************************************************************** */

#include "libft.h"

/// Call function `f` to each node of a list
/// @param lst Head pointer of the a list
/// @param f Function to call on each node
void			ft_lstiter(t_list *lst, void (*f)(t_list *elem))
{
	if (lst && f)
	{
		ft_lstiter(lst->next, f);
		(*f)(lst);
	}
}
