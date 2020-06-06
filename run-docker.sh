#!/usr/bin/env bash

# build image from currend directory Dockerfile
docker build --tag=flask-app-example .


# list docker imaged
docker images list


# run flask example on port 8001 (map to 80)
docker run -p 80:8001 flask-app-example


# bash into container
docker exec -it <container-instance-id> /bin/bash