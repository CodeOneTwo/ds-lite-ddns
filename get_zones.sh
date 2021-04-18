
### Get Zones
## Returns all zones associated with the user.
## get the zone id for the relevant zone for the var ZONE_ID
curl "https://dns.hetzner.com/api/v1/zones" \
     -H "Auth-API-Token: ${SECRET}"
