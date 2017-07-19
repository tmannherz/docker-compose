#!/bin/bash
set -e

echo "Authenticating with $AUTH_URL"
docker login -u _json_key -p "$(cat service-account.json)" "$AUTH_URL"

# first arg is `-f` or `--some-option`
if [ "${1#-}" != "$1" ]; then
    set -- docker-compose "$@"
fi

# if our command is a valid Docker Compose subcommand, invoke it through docker-compose
if docker-compose help "$1" > /dev/null 2>&1; then
    set -- docker-compose "$@"
fi

exec "$@"
