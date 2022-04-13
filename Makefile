all:
		mkdir -p /home/mberne/data/db /home/mberne/data/wp
		docker-compose --project-directory=srcs up -d --build

down:
		docker-compose --project-directory=srcs down --volumes

clean:	down
		docker stop $(docker ps -qa)
		docker rm $(docker ps -qa)
		docker rmi -f $(docker images -qa)
		docker volume rm $(docker volume ls -q)
		docker network rm $(docker network ls -q)
		docker system prune -a

fclean:	clean
		rm -rf /home/mberne/data

re: fclean all

.PHONY: all down clean fclean re
