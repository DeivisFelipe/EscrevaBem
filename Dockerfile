FROM php:8.3-fpm

RUN apt-get update && apt-get install -y \
    zip unzip git curl libpq-dev libonig-dev libzip-dev \
    && docker-php-ext-install pdo pdo_pgsql zip

COPY --from=composer:2 /usr/bin/composer /usr/bin/composer

COPY .docker/dev/php.ini /usr/local/etc/php/php.ini

COPY ./docker/start.sh /start.sh
RUN chmod +x /start.sh

WORKDIR /var/www
ENTRYPOINT ["/start.sh"]
