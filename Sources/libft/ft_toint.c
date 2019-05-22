//
//  ft_toint.c
//  libft
//
//  Created by Alex Legent on 20/05/2019.
//  Copyright © 2019 Alex Legent. All rights reserved.
//

#include "libft.h"

/// Convert a digit character to it's corresponding interger
/// @param character Character to convert
/// @returns Converted integer, ERROR otherwise.
int ft_toint(char character)
{
    if (!ft_isdigit(character))
        return ERROR;
    return character - '0';
}
