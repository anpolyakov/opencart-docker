FROM php:fpm-alpine

RUN apk add --no-cache \
	autoconf \
	libzip-dev \
	gcc \
	g++ \
	make \
	zip \
	gd \
	nano
	
RUN pecl install -o -f zip \
&& rm -rf /tmp/pear \
&& echo "extension=zip.so" > /usr/local/etc/php/conf.d/zip.ini

RUN apk add --update --no-cache freetype libpng libjpeg-turbo freetype-dev libpng-dev libjpeg-turbo-dev \
&& docker-php-ext-configure gd --with-freetype=/usr/include/ --with-jpeg=/usr/include/ \
&& docker-php-ext-install gd

RUN docker-php-ext-install pdo_mysql

CMD ["php-fpm"]
EXPOSE 9000
