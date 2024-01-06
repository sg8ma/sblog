#!/bin/bash
DOMAIN='sblog.yco.jp'
CURRENT_YEAR=`date +%Y`
CURRENT_MONTH=`date +%m`

mkdir -p /var/www/html/${DOMAIN}/wp-etc/cert/${CURRENT_YEAR}-${CURRENT_MONTH}
/home/admin/.acme.sh/acme.sh --install-cert \
    -d ${DOMAIN} \
    --key-file /var/www/html/${DOMAIN}/wp-etc/cert/${CURRENT_YEAR}-${CURRENT_MONTH}/key.pem \
    --fullchain-file /var/www/html/${DOMAIN}/wp-etc/cert/${CURRENT_YEAR}-${CURRENT_MONTH}/fullchain.pem
sed -i".bak" -e "s/\/cert\/[0-9]\{4\}-[0-9]\{2\}/\/cert\/${CURRENT_YEAR}-${CURRENT_MONTH}/g" /var/www/html/${DOMAIN}/wp-etc/nginx.conf 