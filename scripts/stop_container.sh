#!/bin/bash

set -e

echo "Stopping and removing running containers..."

# Get a list of running containers
CONTAINERS_TO_STOP=$(docker ps -a -q)

if [ -n "$CONTAINERS_TO_STOP" ]; then
    docker stop $CONTAINERS_TO_STOP || true  # Stop containers, ignoring errors
    docker rm -f $CONTAINERS_TO_STOP || true  # Remove containers, ignoring errors
else
    echo "No running containers to stop and remove."
fi

echo "Containers stopped and removed successfully."

