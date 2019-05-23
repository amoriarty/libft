//
//  list_first.c
//  libft
//
//  Created by Alex Legent on 23/05/2019.
//  Copyright © 2019 Alex Legent. All rights reserved.
//

#include "list.h"

/// Find and returns node content matching predicate
/// @param self List to find element in.
/// @param data Data pointer you can use to pass to your predicate function
/// @param predicate Predicate function defining if element match
/// @returns Content of the matching node if exists, null otherwise
void    *list_first(t_list *self, void *data, t_bool (*predicate)(void *, void *))
{
    t_node  *walk;

    walk = self->head;
    while (walk)
    {
        if (predicate(data, walk->content))
            return (walk->content);
        walk = walk->next;
    }
    return (NULL);
}
