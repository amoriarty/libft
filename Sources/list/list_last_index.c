//
//  list_last_index.c
//  libft
//
//  Created by Alex Legent on 23/05/2019.
//  Copyright © 2019 Alex Legent. All rights reserved.
//

#include "list.h"

/// Find and returns last node content matching predicate
/// @param self List to find element in.
/// @param data Data pointer you can use to pass to your predicate function
/// @param predicate Predicate function defining if element match
/// @returns Content of the matching node if exists, null otherwise
ssize_t    list_last_index(t_list *self, void *data, t_bool (*predicate)(void *data, void *content))
{
    t_node  *walk;
    ssize_t iterator;


    walk = self->tail;
    iterator = self->count - 1;
    while (walk)
    {
        if (predicate(data, walk->content))
            return (iterator);
        walk = walk->previous;
        iterator -= 1;
    }
    return (ERROR);
}
