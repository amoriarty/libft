//
// Created by Alex Legent on 30/05/2020.
//

#include "list.h"
#include <stdlib.h>

void				*list_drop_first(t_list *list)
{
	t_node 			*first;

	first = list->head;
	if (first == NULL)
		return (NULL);
	list->head = first->next;
	list->count -= 1;
	return (first->content);
}