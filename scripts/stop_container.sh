#!/bin/bash

set -e

echo "Stopping and removing running containers..."

# Stop and remove containers, if any
if docker ps -a -q >/dev/null 2>&1; then
    docker stop $(docker ps -a -q) || true  # Stop containers, ignoring errors
    docker rm -f $(docker ps -a -q) || true  # Remove containers, ignoring errors
fi

echo "Containers stopped and removed successfully."

