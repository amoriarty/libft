//
//  list_new.c
//  libft
//
//  Created by Alex Legent on 21/05/2019.
//  Copyright © 2019 Alex Legent. All rights reserved.
//

#include "list.h"

/// Allocate and set default value to a new list
/// @returns Newly allocated list
t_list      *list_new()
{
    t_list  *list;

    list = (t_list *) malloc(sizeof(t_list));
    list->count = 0;
    list->head = NULL;
    list->tail = NULL;
    return (list);
}
