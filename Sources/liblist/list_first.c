//
//  list_first.c
//  libft
//
//  Created by Alex Legent on 23/05/2019.
//  Copyright © 2019 Alex Legent. All rights reserved.
//

#include "liblist.h"

void    *list_first(t_list *self, t_bool (*predicate)(void *))
{
    t_node  *walk;

    walk = self->head;
    while (walk)
    {
        if (predicate(walk->content))
            return (walk->content);
        walk = walk->next;
    }
    return (NULL);
}
