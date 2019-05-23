//
//  list.h
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
void        list_free(t_list **self, void (*remove)(void *));
void        list_append(t_list *self, void *content);
void        *list_first(t_list *self, void *data, t_bool (*predicate)(void *, void *));
void        list_for_each(t_list *self, void (*function)(void *));
t_list      *list_map(t_list *self, void *(*function)(void *));
void        **list_to_array(t_list *self, void *(*duplicate)(void *));
void        list_remove(t_list *self, t_bool (*predicate)(void *content), void (*remove)(void *));
void        list_remove_at(t_list *self, int index, void (*remove)(void *));
void        list_remove_all(t_list *self, void (*remove)(void *));

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
