all:
		mkdir -p /home/mberne/data/db /home/mberne/data/wp
		docker-compose --project-directory=srcs up -d --build

down:
		docker-compose --project-directory=srcs down --volumes

clean:	down
		docker system prune -a -f --volumes

fclean:	clean
		sudo rm -rf /home/mberne/data

re:	fclean all

.PHONY: all down clean fclean re
