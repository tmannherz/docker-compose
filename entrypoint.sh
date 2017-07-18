#!/bin/bash
set -e

echo "Authenticating with $AUTH_URL"
docker login -u _json_key -p "$(cat service-account.json)" "$AUTH_URL"

exec docker-compose "$@"
