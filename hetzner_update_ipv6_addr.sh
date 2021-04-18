#!/bin/bash
INTERFACE=${INTERFACE:-eth0}
IP_ADDR=$(ip addr show $INTERFACE dynamic|grep inet6|cut -d' ' -f 6|cut -d'/' -f 1)

### Get Zones
## Returns all zones associated with the user.
## get the zone id for the relevant zone for the var ZONE_ID
# curl "https://dns.hetzner.com/api/v1/zones" \
#      -H "Auth-API-Token: ${SECRET}"

### Get Records
## Returns all records associated with user.
## Get the relevant record id for the var RECORD_ID
# curl "https://dns.hetzner.com/api/v1/records?zone_id=${ZONE_ID}" \
#      -H "Auth-API-Token: ${SECRET}"


## Update Zone
# Updates a zone.
curl -X "PUT" "https://dns.hetzner.com/api/v1/records/${RECORD_ID}" \
     -H 'Content-Type: application/json' \
     -H "Auth-API-Token: ${SECRET}" \
     -d "{
  \"value\": \"${IP_ADDR}\",
  \"ttl\": 60,
  \"type\": \"AAAA\",
  \"name\": \"${DOMAIN_NAME}\",
  \"zone_id\": \"${ZONE_ID}\"
}"
