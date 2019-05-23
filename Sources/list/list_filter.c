//
//  list_filter.c
//  libft
//
//  Created by Alex Legent on 23/05/2019.
//  Copyright © 2019 Alex Legent. All rights reserved.
//

#include "list.h"

/// Create a newly allocated list with only elements matching predicate
/// @param self List to filter
/// @param data Data you pass to your predicate function
/// @param predicate Function defining matching elements
/// @param duplicate Function to duplicate node content
/// @returns Newly allocated list only containing matching elements
t_list  *list_filter(t_list *self,
                     void *data,
                     t_bool (*predicate)(void *data, void *content),
                     void *(*duplicate)(void *content))
{
    t_node  *walk;
    t_list  *filtered;

    walk = self->head;
    filtered = list_new();
    while (walk)
    {
        if (predicate(data, walk->content))
            list_append(filtered, node_new(duplicate(walk->content)));
        walk = walk->next;
    }
    return (filtered);
}
