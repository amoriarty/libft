//
//  ft_strreplace.c
//  libft
//
//  Created by Alex Legent on 21/05/2019.
//  Copyright © 2019 Alex Legent. All rights reserved.
//

#include "libft.h"

#warning 'ft_strreplace' isn't tested
/// Deallocate content pointed by destination before assigning source
/// @param destination Destination string
/// @param source String to assign into destination
void    ft_strreplace(char **destination, char *source)
{
    ft_strdel(destination);
    *destination = source;
}
