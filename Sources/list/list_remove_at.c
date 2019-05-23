//
//  list_remove.c
//  libft
//
//  Created by Alex Legent on 22/05/2019.
//  Copyright © 2019 Alex Legent. All rights reserved.
//

#include "list.h"

/// Remove a node from list at index, applying function `remove` on node content beforehand.
/// @param self List to remove node from
/// @param index Index of the node to remove
/// @param remove Function to apply to deallocate node content
void    list_remove_at(t_list *self, int index, void (*remove)(void *content))
{
    t_node          *entry;
    t_node          **indirect;
    size_t          iterator;

    iterator = 0;
    indirect = &self->head;
    if (self->count == 0 || index >= self->count)
        return;
    while (iterator != index)
    {
        indirect = &(*indirect)->next;
        iterator += 1;
    }
    self->count -= 1;
    entry = *indirect;
    *indirect = entry->next;
    if (*indirect)
        (*indirect)->previous = entry->previous;
    if (self->tail == entry)
        self->tail = entry->previous;
    node_free(entry, remove);
}
