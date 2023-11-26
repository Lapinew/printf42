# **************************************************************************** #
#                                                                              #
#                                                         :::      ::::::::    #
#    Makefile                                           :+:      :+:    :+:    #
#                                                     +:+ +:+         +:+      #
#    By: daleliev <marvin@42.fr>                    +#+  +:+       +#+         #
#                                                 +#+#+#+#+#+   +#+            #
#    Created: 2023/10/31 11:29:34 by daleliev          #+#    #+#              #
#    Updated: 2023/11/02 15:25:38 by daleliev         ###   ########.fr        #
#                                                                              #
# **************************************************************************** #

NAME = libftprintf.a
CC = gcc
CFLAGS = -Wall -Wextra -Werror

AR = ar rcs
# ar: commande pour creer et manipuler des fichiers d'archives.
# r: Remplacer ou ajouter des fichier a l'archive.
# c: Creer l'archive si elle n'existe pas.
# s: Creer un index pour l'archive pour ameliorer les temps d'acces.

RM = rm -f
# rm: supprimer des fichier et des repertoires
# -f: flag force pour supprimer sans autorisation
SRC = ft_printf.c ft_printp.c ft_printx.c ft_printupperx.c ft_putchar_fd.c ft_putnbr_fd.c ft_putstr_fd.c
OBJ = $(SRC:.c=.o)

all : $(NAME)

$(NAME) : $(OBJ)
	$(AR)	$(NAME)	$(OBJ)

%.o : %.c
	$(CC) $(CFLAGS) -c $< -o $@

clean :
	$(RM)	$(OBJ)

fclean : clean 
	$(RM)	$(NAME)

re : fclean all
