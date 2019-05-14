/* ************************************************************************** */
/*                                                                            */
/*                                                        :::      ::::::::   */
/*   ft_lstdelete.c                                     :+:      :+:    :+:   */
/*                                                    +:+ +:+         +:+     */
/*   By: alegent <alegent@student.42.fr>            +#+  +:+       +#+        */
/*                                                +#+#+#+#+#+   +#+           */
/*   Created: 2014/11/26 15:28:19 by alegent           #+#    #+#             */
/*   Updated: 2015/01/03 15:46:07 by alegent          ###   ########.fr       */
/*                                                                            */
/* ************************************************************************** */

#include "libft.h"

// TODO: Maybe delete that
void			ft_lstdelete(t_list **del, t_list *prec, t_list *suiv)
{
	prec->next = suiv;
	free(*del);
}
