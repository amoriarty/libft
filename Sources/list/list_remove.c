//
//  list_remove.c
//  libft
//
//  Created by Alex Legent on 22/05/2019.
//  Copyright © 2019 Alex Legent. All rights reserved.
//

#include "list.h"

/// Remove all list entry that match the given predicate
/// @param self List to remove items from
/// @param predicate Function returning true when item has to be removed
/// @param remove Function deallocation node content before free the node itself
void    list_remove(t_list *self, void *data, t_bool (*predicate)(void *data, void *content), void (*remove)(void *content))
{
    t_node  *walk;

    walk = self->head;
    while (walk)
    {
        if (predicate(data, walk->content))
        {
            if (walk->previous)
                walk->previous->next = walk->next;
            if (walk->next)
                walk->next->previous = walk->previous;
            if (walk == self->tail)
                self->tail = self->tail->previous;
            if (walk == self->head)
                self->head = self->head->next;
            node_free(walk, remove);
            self->count -= 1;
        }
        walk = walk->next;
    }
}
