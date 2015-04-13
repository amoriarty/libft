#include "libft.h"

int			ft_isblank(int c)
{
	if (c == ' ' || c == '\n' || c == '\t'
			|| c == '\a' || c == '\v' || c == '\f')
		return (TRUE);
	return (FALSE);
}
