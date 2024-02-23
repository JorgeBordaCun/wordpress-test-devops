FROM php:7.4-apache

RUN apt-get update && apt-get upgrade -yy 
RUN docker-php-ext-install mysqli pdo_mysql

WORKDIR /var/www/html
COPY . /var/www/html

# Exponer el puerto 80
EXPOSE 80

# Iniciar el servidor Apache
CMD ["apache2-foreground"]