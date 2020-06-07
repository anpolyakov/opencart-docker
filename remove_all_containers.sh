#!/bin/bash
echo "This command will remove all containers even they running"

docker rm $(docker ps -aq) --force
