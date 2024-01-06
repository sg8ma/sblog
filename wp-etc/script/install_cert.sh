#!/bin/bash
DOMAIN='sblog.yco.jp'

/home/admin/.acme.sh/acme.sh --issue \
    -d ${DOMAIN} \
    -w /var/www/html/${DOMAIN}/ \
    --force