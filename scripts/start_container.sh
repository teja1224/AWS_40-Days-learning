#!bin/bash
set -e

# pull the docker image from the container
docker pull tejabandi1224/simple-python-flask-app:latest

#run the docker image as container
docker run -d -p tejabandi1224/simple-python-flask-app:latest