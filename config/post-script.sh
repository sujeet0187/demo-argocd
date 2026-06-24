#!/bin/bash
rm -rf /etc/apache2/sites-available/000-default.conf
# cp /tmp/.htpasswd /etc/apache2/
cp /tmp/000-default.conf-${APP_ENV} /etc/apache2/sites-available/000-default.conf

source /etc/apache2/envvars
exec apache2 -D FOREGROUND