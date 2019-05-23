//
//  list_remove_all.c
//  libft
//
//  Created by Alex Legent on 22/05/2019.
//  Copyright © 2019 Alex Legent. All rights reserved.
//

#include "list.h"

/// Deallocate and remove all entries in a list.
/// @param self List to remove all entries
/// @param remove Function to apply to deallocate content node.
void    list_remove_all(t_list *self, void (*remove)(void *content))
{
    t_node  *walk;

    walk = self->head;
    self->head = NULL;
    self->tail = NULL;
    self->count = 0;
    while (walk)
    {
        node_free(walk, remove);
        walk = walk->next;
    }
}
