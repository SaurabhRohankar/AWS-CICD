#!/bin/bash
set -e

#pull the docker image
docker pull saurabh19/sample-flask-app

#running container
docker run -d --name myapp saurabh19/sample-flask-app
