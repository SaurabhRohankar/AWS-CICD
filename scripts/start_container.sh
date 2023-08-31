#!/bin/bash

#pull the docker image
docker pull saurabh19/sample-flask-app

#running container
docker run -d myapp --image=saurabh19/sample-flask-app
