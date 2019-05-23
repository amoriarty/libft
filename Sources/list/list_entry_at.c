//
//  list_entry_at.c
//  libft
//
//  Created by Alex Legent on 23/05/2019.
//  Copyright © 2019 Alex Legent. All rights reserved.
//

#include "list.h"

/// Return content from node at index
/// @param self List to get entry from
/// @param index Index of the list to get content
/// @returns Content of the node at index, NULL otherwise
void    *list_entry_at(t_list *self, size_t index)
{
    t_node  *walk;
    size_t  iterator;

    iterator = 0;
    walk = self->head;
    while (walk)
    {
        if (iterator == index)
            return (walk->content);
        walk = walk->next;
        iterator += 1;
    }
    return (NULL);
}
