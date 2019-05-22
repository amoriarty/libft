//
//  ft_abs.c
//  libft
//
//  Created by Alex Legent on 20/05/2019.
//  Copyright © 2019 Alex Legent. All rights reserved.
//

#include "libft.h"

/// Return absolute number of an integer
/// @param number Integer to get absolute value from
/// @returns Absolute value of the integer passed as parameter
int ft_abs(int number)
{
    return number > 0 ? number : number * -1;
}
