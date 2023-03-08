#!/bin/bash

# Schleife über alle Docker-Container
for container in $(docker ps -aq)
do
    # Prüfe auf Updates
    docker pull $(docker inspect --format='{{index .Config.Image}}' $container)
done
