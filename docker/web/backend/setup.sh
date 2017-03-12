#!/usr/bin/env bash

a2enmod rewrite expires

apt-get update 

apt-get install -y libpng12-dev libjpeg-dev libkrb5-dev vim ssh sendmail libmcrypt-dev libzip-dev \
    && docker-php-ext-configure gd --with-png-dir=/usr --with-jpeg-dir=/usr \
    && docker-php-ext-install gd mysqli mcrypt zip \
    && apt-get -y install libssl-dev libc-client2007e-dev libkrb5-dev \
    && docker-php-ext-configure imap --with-imap-ssl --with-kerberos \
    && docker-php-ext-install imap opcache \
    && rm -rf /var/lib/apt/lists/*

apt-get update

apt-get install -y cron

#php-mcrypt
#php-zip
