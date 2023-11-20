#!/bin/bash

# Uncomment below for SSL
# Obtain certificates (replace with your domain and email)
# certbot certonly --non-interactive --agree-tos --email artur@tryscout.ai --standalone -d llm.app.tryscout.ai

# Setup a cron job for certificate renewal
# echo "0 */12 * * * /usr/local/bin/renew-certs.sh" | crontab -

# Start cron
# cron

# Start OpenResty (NGINX)
exec "$@"
