#!/bin/bash
rm -rf /etc/apache2/sites-available/000-default.conf
# cp /tmp/.htpasswd /etc/apache2/
cp /tmp/000-default.conf-${APP_ENV} /etc/apache2/sites-available/000-default.conf
 
# Enable apache2 requred modules
a2enmod ssl
a2enmod rewrite
a2enmod headers
source /etc/apache2/envvars
exec apache2 -D FOREGROUND
