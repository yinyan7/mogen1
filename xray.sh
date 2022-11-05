#!/bin/sh
if [ ! -f UUID ]; then
  UUID="32e92a13-8c19-42fb-8699-e6a1987ba578"
fi

# Set config.json
sed -i "s/PORT/$PORT/g" /etc/xray/config.json
sed -i "s/UUID/$UUID/g" /etc/xray/config.json

echo starting xray platform
echo starting with UUID:$UUID
echo listening at 0.0.0.0:$PORT

exec "$@"

