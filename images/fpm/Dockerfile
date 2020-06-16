FROM php:fpm-buster

RUN apt-get -y update && apt-get -y upgrade

RUN apt-get -y install libpng-dev libzip-dev libjpeg-dev libfreetype6-dev nano

RUN docker-php-ext-configure gd \
    --with-freetype \
    --with-jpeg \
&& docker-php-ext-install gd

RUN docker-php-ext-install pdo_mysql

RUN pecl install xdebug-2.9.6 \
    && docker-php-ext-enable xdebug

RUN docker-php-ext-install zip

CMD ["php-fpm"]
EXPOSE 9000

