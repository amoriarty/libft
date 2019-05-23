//
//  list_from_array.c
//  libft
//
//  Created by Alex Legent on 23/05/2019.
//  Copyright © 2019 Alex Legent. All rights reserved.
//

#include "list.h"

/// Create a newly allocated list and duplicate content of the array into it
/// @param array Array to convert into list
/// @param size Size of the array to convert
/// @param duplicate Function to use to duplicate each element of the array
/// @returns Newly allocated list, converted from the array
t_list  *list_from_array(void **array, size_t size, void *(*duplicate)(void *content))
{
    t_node  *node;
    t_list  *list;
    size_t  iterator;
    void    *duplication;

    list = list_new();
    iterator = 0;
    while (iterator < size)
    {
        duplication = duplicate(array[iterator]);
        node = node_new(duplication);
        list_append(list, node);
        iterator += 1;
    }
    return (list);
}
