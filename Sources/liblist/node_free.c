//
//  node_free.c
//  libft
//
//  Created by Alex Legent on 22/05/2019.
//  Copyright © 2019 Alex Legent. All rights reserved.
//

#include "liblist.h"

/// Deallocate a node, applying `remove` function on content.
/// @param self Node to delete
/// @param remove Function to deallocate content
void    node_free(t_node *self, void (*remove)(void *))
{
    (*remove)(self->content);
    free(self);
}
