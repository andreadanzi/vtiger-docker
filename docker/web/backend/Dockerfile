FROM php:5.6-apache

COPY ["docker/web/backend/setup.sh","docker/web/backend/install.sh", "/opt/bin/"]

RUN /bin/bash /opt/bin/setup.sh

COPY ["docker/web/backend/vtiger-recommended.ini","docker/web/backend/opcache-recommended.ini", "/usr/local/etc/php/conf.d/"]

WORKDIR /var/www/html

RUN touch /var/www/html/greeting
RUN chown -R www-data:www-data /var/www/html/

CMD ["apache2-foreground"]
