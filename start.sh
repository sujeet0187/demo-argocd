#!/bin/bash
touch /var/log/cron.log
service apache2 restart
tail -f /var/log/cron.log
