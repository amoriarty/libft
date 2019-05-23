//
//  list_contains.c
//  libft
//
//  Created by Alex Legent on 23/05/2019.
//  Copyright © 2019 Alex Legent. All rights reserved.
//

#include "list.h"

/// Check if list contains an element matching corresponding predicate
/// @param self List to check elements in
/// @param data Data you can pass to predicate function
/// @param predicate Function defining if an elements is matching or not
/// @returns True if list contains an elements matching predicate, false otherwise
t_bool  list_contains(t_list *self, void *data, t_bool (*predicate)(void *data, void *content))
{
    return (list_first(self, data, predicate) != NULL);
}
