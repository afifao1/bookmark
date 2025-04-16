FROM php:8.4-fpm-alpine

WORKDIR /var/www/html

RUN apk update && apk add --no-cache \
    postgresql-dev \
    libpq \
    libpq-dev \
    $PHPIZE_DEPS

RUN docker-php-ext-install pdo pdo_pgsql

RUN apk del postgresql-dev
