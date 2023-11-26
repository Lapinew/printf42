/* ************************************************************************** */
/*                                                                            */
/*                                                        :::      ::::::::   */
/*   ft_putnbr_fd.c                                     :+:      :+:    :+:   */
/*                                                    +:+ +:+         +:+     */
/*   By: daleliev <marvin@42.fr>                    +#+  +:+       +#+        */
/*                                                +#+#+#+#+#+   +#+           */
/*   Created: 2023/10/22 10:58:03 by daleliev          #+#    #+#             */
/*   Updated: 2023/10/22 12:09:48 by daleliev         ###   ########.fr       */
/*                                                                            */
/* ************************************************************************** */

#include "ft_printf.h"
#include <stdio.h>

int	ft_putnbr_fd(long long n, int len)
{
	unsigned long long	nb;
	char				c;

	if (n < 0)
	{
		write(1, "-", 1);
		nb = (unsigned long long)(-n);
		len++;
	}
	else
		nb = (unsigned long long)n;
	if (nb > 9)
		len = ft_putnbr_fd(nb / 10, len);
	c = (char)(nb % 10 + '0');
	write(1, &c, 1);
	len++;
	return (len);
}

int	ft_putnbru_fd(unsigned long long n, int len)
{
	char				c;

	if (n > 9)
		len = ft_putnbr_fd(n / 10, len);
	c = (char)(n % 10 + '0');
	write(1, &c, 1);
	len++;
	return (len);
}
