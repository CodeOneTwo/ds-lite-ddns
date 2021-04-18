
## Get Records
# Returns all records associated with user.
# Get the relevant record id for the var RECORD_ID
curl "https://dns.hetzner.com/api/v1/records?zone_id=${ZONE_ID}" \
     -H "Auth-API-Token: ${SECRET}"
