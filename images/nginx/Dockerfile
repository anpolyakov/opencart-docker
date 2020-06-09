FROM nginx

RUN ["nginx"]
EXPOSE 80 443

RUN apt-get update && apt-get install -y \
    wget \    
    unzip \
    nano

WORKDIR /var/www/html

VOLUME ["/var/www/html"]
