#!/bin/bash

#exits immediately if non zero value returned
set -e

#stopping all the running containers
docker rm -f $(docker ps -a -q)
