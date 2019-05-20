//
//  ft_isupper.c
//  libft
//
//  Created by Alex Legent on 20/05/2019.
//  Copyright © 2019 Alex Legent. All rights reserved.
//

#include "libft.h"

/// Alphabetic uppercase character test
/// @param character Character to test
/// @returns True is character is alphabetic and uppercase, false otherwise
#warning 'ft_isupper' didn't have tests
t_bool  ft_isupper(int character)
{
    return (character >= 'A' && character <= 'Z');
}
