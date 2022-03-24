# Specifies the Parent Image
FROM debian:buster

# A enlever quand docker compose up
# ENV 

# Set the working directory for RUN/CMD/ENTRYPOINT/COPY/ADD
WORKDIR /home/

# Execute commands to make an image
RUN apt-get update -y && apt-get upgrade -y

RUN apt-get install -y mariadb-server mariadb-client vim

# Same as ADD but working with paths containing whitespaces
COPY conf/ .

# Provides default for an executing container / Can be used for ENTRYPOINT
CMD

# Configure a container to run like an executable (see PID 1)
ENTRYPOINT ["sleep", "infinity"]
