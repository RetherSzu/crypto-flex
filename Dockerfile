FROM php:8.2-apache

RUN a2enmod rewrite

RUN a2enmod ssl

ENV TZ="Europe/Paris"

RUN apt-get update && apt-get install -y git unzip zip curl nano ca-certificates

WORKDIR /var/www/html

COPY . .

COPY server/site.conf /etc/apache2/sites-enabled/site.conf

COPY --from=composer:2.4 /usr/bin/composer /usr/bin/composer

ADD https://github.com/mlocati/docker-php-extension-installer/releases/latest/download/install-php-extensions /usr/local/bin/

RUN curl -sL https://deb.nodesource.com/setup_18.x |  bash -

COPY --from=mlocati/php-extension-installer /usr/bin/install-php-extensions /usr/local/bin/

RUN apt update && apt-get install -y nodejs

RUN apt-get update --fix-missing && apt-get install -y git unzip zip curl nano ca-certificates

RUN npm install -g yarn

RUN chmod +x /usr/local/bin/install-php-extensions && install-php-extensions gd pdo_mysql bcmath zip intl opcache sqlsrv pdo_sqlsrv
