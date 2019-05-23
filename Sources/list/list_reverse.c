//
//  list_reverse.c
//  libft
//
//  Created by Alex Legent on 23/05/2019.
//  Copyright © 2019 Alex Legent. All rights reserved.
//

#include "list.h"

/// Reverse in place every node in the list.
/// @param self List to reverse
void    list_reverse(t_list *self)
{
    t_node  *walk;
    t_node  *temporary;

    walk = self->head;
    if (self->count < 2)
        return;
    while (walk)
    {
        temporary = walk->next;
        walk->next = walk->previous;
        walk->previous = temporary;
        walk = temporary;
    }
    temporary = self->head;
    self->head = self->tail;
    self->tail = temporary;
}
