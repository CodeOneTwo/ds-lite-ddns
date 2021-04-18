# DDNS for DS-Lite with Hetzner

If you have ds-lite at home and use hetzner dns server you can use this script to update your ip

# install

copy the script to a location you like e.g. `/usr/local/bin`

copy the systemd and timer file to `/etc/systemd/system/`

Add the following environment var to the systemd file with overrides

`systemctl edit ds-lite-ddns-hetzer.service`

env vars:
```
[Service]
Environment=SECRET=<secret>
Environment=ZONE_ID=<zone_id>
Environment=RECORD_ID=<record_id>
Environment=DOMAIN_NAME=<domain_name>
```

# find relevant ZONE_ID RECORD_ID

`SECRET=<secret> ./get_zones.sh`

`SECRET=<secret> ZONE=<zone_id> ./get_records.sh`
