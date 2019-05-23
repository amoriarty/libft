//
//  list_map.c
//  libft
//
//  Created by Alex Legent on 22/05/2019.
//  Copyright © 2019 Alex Legent. All rights reserved.
//

#include "list.h"

/// Convert a list in a new one by applying functions onto node content
/// @param self List to map
/// @param function Function mapping content to another one
/// @returns Newly allocated list, with mapped content
t_list          *list_map(t_list *self, void *(*function)(void *content))
{
    t_list      *new;
    t_node      *walk;

    new = list_new();
    walk = self->head;
    while (walk)
    {
        list_append(new, function(walk->content));
        walk = walk->next;
    }
    return (new);
}
