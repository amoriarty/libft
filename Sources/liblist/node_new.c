//
//  node_new.c
//  libft
//
//  Created by Alex Legent on 21/05/2019.
//  Copyright © 2019 Alex Legent. All rights reserved.
//

#include "liblist.h"

t_node  *node_new(void *content)
{
    t_node  *node;

    node = (t_node *) malloc(sizeof(t_node));
    node->content = content;
    node->next = NULL;
    return (node);
}
