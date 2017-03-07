#!/usr/bin/env bash

a2enmod rewrite expires

apt-get update 

apt-get install -y libpng12-dev libjpeg-dev libkrb5-dev vim ssh sendmail \
    && docker-php-ext-configure gd --with-png-dir=/usr --with-jpeg-dir=/usr \
    && docker-php-ext-install gd mysqli \
    && apt-get -y install libssl-dev libc-client2007e-dev libkrb5-dev \
    && docker-php-ext-configure imap --with-imap-ssl --with-kerberos \
    && docker-php-ext-install imap opcache \
    && rm -rf /var/lib/apt/lists/*

