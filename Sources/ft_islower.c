//
//  ft_islower.c
//  libft
//
//  Created by Alex Legent on 20/05/2019.
//  Copyright © 2019 Alex Legent. All rights reserved.
//

#include "libft.h"

/// Alphabetic lowercase character test
/// @param character Character to test
/// @returns True is character is alphabetic and lower case, false otherwise
#warning 'ft_islower' didn't have tests
t_bool  ft_islower(int character)
{
    return (character >= 'a' && character <= 'z');
}
