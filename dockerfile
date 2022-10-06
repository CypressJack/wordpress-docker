FROM wordpress:php7.4-apache

RUN pecl install "xdebug" \
    && docker-php-ext-enable xdebug

RUN touch $PHP_INI_DIR/conf.d/custom.ini