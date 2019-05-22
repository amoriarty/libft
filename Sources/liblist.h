//
//  liblist.h
//  libft
//
//  Created by Alex Legent on 21/05/2019.
//  Copyright © 2019 Alex Legent. All rights reserved.
//

#ifndef LIBLIST_H
# define LIBLIST_H
# include "libft.h"

typedef struct s_list t_list;
typedef struct s_node t_node;

// MARK:- List

struct      s_list
{
    size_t  count;
    t_node  *head;
    t_node  *tail;
};

t_list      *list_new(void);
void        list_append(t_list *self, void *content);
void        list_remove(t_list *self, int index, void (*remove)(void *));

// MARK:- Node

struct      s_node
{
    void    *content;
    t_node  *next;
    t_node  *previous;
};

t_node      *node_new(void *content);
void        node_free(t_node *self, void (*remove)(void *));

#endif
