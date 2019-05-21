//
//  ft_tochar.c
//  libft
//
//  Created by Alex Legent on 20/05/2019.
//  Copyright © 2019 Alex Legent. All rights reserved.
//

#include "libft.h"

/// Convert a number between 0 and 9 to it's correspondant character
/// @param number Integer to convert
/// @returns Converted characted, ERROR otherwise
char    ft_tochar(int number)
{
    if (number < 0 || number > 9)
        return ERROR;
    return number + '0';
}
