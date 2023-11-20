#!/bin/bash

# Renew the certificates
certbot renew --quiet

# Reload NGINX if certificates are renewed
# Note: Adjust the reload command if necessary for OpenResty
if [ $? -eq 0 ]; then
    /usr/bin/openresty -s reload
fi
