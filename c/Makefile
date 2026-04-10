CC = cc
CCFLAGS = -Wall -Wextra -Werror -g3
NAME = minishell
SRCS = 
OBJECTS = $(SRCS:.c=.o)

all: $(NAME)	

$(NAME): $(OBJECTS)
	$(CC) $(CCFLAGS) $(OBJECTS) -o $(NAME)

%.o: %.c
	$(CC) $(CCFLAGS) $(CPPFLAGS) -c $< -o $@

clean:
	rm -f $(OBJECTS)

fclean: clean
	rm -f $(NAME)

re: fclean all                             