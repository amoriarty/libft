//
//  list_first_index.c
//  libft
//
//  Created by Alex Legent on 23/05/2019.
//  Copyright © 2019 Alex Legent. All rights reserved.
//

#include "list.h"

/// Find and returns first index of node content matching predicate
/// @param self List to find element in.
/// @param data Data pointer you can use to pass to your predicate function
/// @param predicate Predicate function defining if element match
/// @returns Index of the matching node content if exists, ERROR (-1) otherwise
ssize_t    list_first_index(t_list *self, void *data, t_bool (*predicate)(void *data, void *content))
{
    t_node  *walk;
    ssize_t  iterator;

    iterator = 0;
    walk = self->head;
    while (walk)
    {
        if (predicate(data, walk->content))
            return (iterator);
        walk = walk->next;
        iterator += 1;
    }
    return (ERROR);
}
