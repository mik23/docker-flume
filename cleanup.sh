#!/bin/sh


docker stop $(docker ps -a -q -f status=running) #michael

# REMOVE CONTAINERS WITH PRE-DEFINED STATUS
docker rm -v $(docker ps -a -q -f status=exited)
docker rm -v $(docker ps -a -q -f status=created)


# REMOVE UNWANTED VOLUMES
docker volume rm $(docker volume ls -q -f dangling=true)


# REMOVE IMAGES
docker rmi $(docker images -q -f dangling=true)


exit 0