//
//  list_to_array.c
//  libft
//
//  Created by Alex Legent on 22/05/2019.
//  Copyright © 2019 Alex Legent. All rights reserved.
//

#include "list.h"

/// Convert list into a fixed size, null-terminated, array and duplicate node content.
/// @param self List to convert
/// @param duplicate Function use to duplicate content
void    **list_to_array(t_list *self, void *(*duplicate)(void *))
{
    size_t  size;
    size_t  iterator;
    t_node  *walk;
    void    **array;

    iterator = 0;
    walk = self->head;
    size = sizeof(void *) * (self->count + 1);
    array = (void **) malloc(size);
    ft_bzero(array, size);
    while(walk)
    {
        array[iterator] = duplicate(walk->content);
        walk = walk->next;
        iterator += 1;
    }
    return (array);
}
