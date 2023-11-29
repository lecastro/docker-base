FROM tradeupgroup01/php:8.1.4-fpm-alpine

RUN apk add nano vim

ENV TZ=America/Sao_Paulo
RUN ln -snf /usr/share/zoneinfo/$TZ /etc/localtime && echo $TZ > /etc/timezone

# Install the xdebug
RUN apk add --no-cache $PHPIZE_DEPS \
    && pecl install xdebug \
    && docker-php-ext-enable xdebug

COPY ./environments/development/php.ini /usr/local/etc/php/php.ini
COPY ./environments/development/xdebug.ini /usr/local/etc/php/conf.d/docker-php-ext-xdebug.ini

# Add user for laravel application
# RUN groupadd -g 1000 www
# RUN useradd -u 1000 -ms /bin/sh -g www www
# COPY --chown=www:www . /var/www/html

# RUN printenv
# USER www

CMD ["php-fpm"]
