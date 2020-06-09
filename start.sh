#!/bin/bash

echo "Welcome to the Opencart Installation" /n

echo -n "Would you like to install additional opencart versions alongside to current version? [y/n]: "

read yno

case $yno in

  [yY] | [yY][Ee][Ss] )
    echo "Choose on of this option"
    sh ./menu.sh   
    ;;

  [nN] | [n|N][O|o] )
    echo "We've been started the installation of the opencart"
    ;;
  *) echo "Invalid input"
    ;;
esac

echo ""

echo "Build new images"

docker build -t opencart/fpm ./images/fpm/ && docker build -t opencart/nginx ./images/nginx/

echo "Start Docker compose"

docker-compose up -d
