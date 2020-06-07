#!/bin/bash
echo "This command will remove all images even some of them are using"

docker image rm $(docker images -aq) --force
