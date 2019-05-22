//
//  list_append.c
//  libft
//
//  Created by Alex Legent on 21/05/2019.
//  Copyright © 2019 Alex Legent. All rights reserved.
//

#include "liblist.h"

/// Create a node with content and append it to the list.
void    list_append(t_list *self, void *content)
{
    t_node  *node;

    self->count += 1;
    node = node_new(content);
    node->previous = self->tail;
    if (!self->head)
        self->head = node;
    if (self->tail)
        self->tail->next = node;
    self->tail = node;
}
