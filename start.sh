#!/bin/bash

echo "Welcome to the Opencart Installation" /n

echo "List of images" /

docker images -a

echo "List of containers" /

docker ps -a

echo "Build new images"

docker build -t opencart/fpm ./images/fpm/ && docker build -t opencart/nginx ./images/nginx/

echo "Start Docker compose"

docker-compose up -d
