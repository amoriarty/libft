//
//  list_for_each.c
//  libft
//
//  Created by Alex Legent on 22/05/2019.
//  Copyright © 2019 Alex Legent. All rights reserved.
//

#include "list.h"

/// Apply `function` on every node content of the list
/// @param self List to apply function on
/// @param function Function to called on every node
void        list_for_each(t_list *self, void (*function)(void *))
{
    t_node  *walk;

    walk = self->head;
    while (walk)
    {
        function(walk->content);
        walk = walk->next;
    }
}
