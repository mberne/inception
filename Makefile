all:
		mkdir /home/mberne/data/db /home/mberne/data/wp
		cd ./srcs
		docker-compose up --build

clean:
		docker-compose down --volumes
		docker system prune
		rm -r /home/mberne/data/db /home/mberne/data/wp

re: clean all

.PHONY: all re clean
