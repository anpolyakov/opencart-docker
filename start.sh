#!/bin/bash

echo "Welcome to the Opencart Installation" /n

echo "List of images" /

docker images -a

echo "List of containers" /

docker ps -a

echo "Build new images"

docker build -t bitrix/fpm ./images/fpm/ && docker build -t bitrix/nginx ./images/nginx/

echo "Start Docker compose"

docker-compose up -d
