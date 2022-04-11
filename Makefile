all:
		mkdir -p /home/mberne/data/db /home/mberne/data/wp
		docker-compose --project-directory=srcs up -d --build

clean:
		docker-compose --project-directory=srcs down --volumes
		# docker system prune -a
		# rm -rf /home/mberne/data/db /home/mberne/data/wp

re: clean all

.PHONY: all re clean
