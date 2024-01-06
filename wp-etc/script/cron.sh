#!/bin/bash
DOMAIN='sblog.yco.jp'
CURRENT_YEAR=`date +%Y`
CURRENT_MONTH=`date +%m`

#sudo chown root /var/www/html/${DOMAIN}/wp-etc/script/cron.sh
#sudo chmod 755 /var/www/html/${DOMAIN}/wp-etc/script/cron.sh
#ln -nfs /var/www/html/${DOMAIN}/wp-etc/script/cron.sh /etc/cron.monthly/${DOMAIN}
cd /var/www/html/${DOMAIN}/wp-etc/script
. ./update_cert.sh
cd /var/www/html/${DOMAIN}
git reset HEAD
git add wp-etc/nginx.conf
git add wp-etc/cert/${CURRENT_YEAR}-${CURRENT_MONTH}
git commit -m "chore: update certficate"
git push origin main