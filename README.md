# Docker + Node.js

Dockerize a Node.js app. 

[CMD]
docker build -t similimodo/nodedemo:1.0.0 . #the -t is for tag and the 1.0.0 is the tag version and the last . is the directory where the dockerfile is located

docker run -p 5000:8080 <Image Id> #running the container in a non detached mode

docker run -d -p 5000:8080 <Image Id> #running the container in a detached mode

docker kill <Container Id> #Kills the container process

docker rm <Container Id> #Remove the killed container

docker exec -it <Container Id> /bin/sh #This is used to login to the container


docker run -p 5001:8080 \
--name volTest \
--mount source=shared-data-paschal,target=/data \
similimodo/nodedemo:1.0.0
