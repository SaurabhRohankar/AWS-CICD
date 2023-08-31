#!/bin/bash

#stopping all the running containers
docker rm -f $(docker ps -a -q)
