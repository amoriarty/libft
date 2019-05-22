//
//  list_free.c
//  libft
//
//  Created by Alex Legent on 22/05/2019.
//  Copyright © 2019 Alex Legent. All rights reserved.
//

#include "liblist.h"

/// Deallocation all entries and the list itself.
/// @param self List to free
/// @param remove Function to deallocate node content
void    list_free(t_list **self, void (*remove)(void *))
{
    list_remove_all(*self, remove);
    free(*self);
    *self = NULL;
}
