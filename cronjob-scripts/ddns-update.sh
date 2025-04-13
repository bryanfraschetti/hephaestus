#!/usr/bin/bash
export EXTERNAL_IP=$(curl -s ifconfig.me)
export ZONE_ID="<zone-id>"
export CLOUDFLARE_API_KEY="<api-key>"
export CLOUDFLARE_EMAIL="<cloudflare-account-email>"
export DNS_RECORD_ID="<dns-record-id>"

curl https://api.cloudflare.com/client/v4/zones/$ZONE_ID/dns_records/$DNS_RECORD_ID \
    -X PUT \
    -H 'Content-Type: application/json' \
    -H "X-Auth-Email: $CLOUDFLARE_EMAIL" \
    -H "Authorization: Bearer $CLOUDFLARE_API_KEY" \
    -d '{
      "comment": "Domain verification record",
      "content": "'"$EXTERNAL_IP"'",
      "name": "<domain-name>",
      "proxied": true,
      "ttl": 3600,
      "type": "A"
    }' >> /var/log/ddns-update.log 2>&1
