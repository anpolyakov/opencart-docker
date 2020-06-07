FROM nginx

RUN ["nginx"]
EXPOSE 80 443

RUN apt-get update && apt-get install -y \
    wget \    
    unzip \
    nano

WORKDIR /var/www/html

ADD https://github.com/opencart/opencart/releases/download/3.0.3.3/opencart-3.0.3.3.zip /var/www/html

RUN unzip opencart-3.0.3.3.zip \
    && mv upload opencart \
    && cd opencart \
    && mv config-dist.php config.php \
    && mv admin/config-dist.php admin/config.php \
    && pwd \
    && ls -l | head

VOLUME ["/var/www/html"]
