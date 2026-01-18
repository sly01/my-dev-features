#!/bin/sh
set -e

echo "Activating feature 'install-jq'..."

# "VERSION" comes from the "options" in the json above, automatically uppercased
JQ_VERSION=${VERSION:-latest}

echo "Installing jq version: $JQ_VERSION"

# Simple install logic (detects if apk or apt-get exists)
if command -v apk >/dev/null; then
  apk add --no-cache jq
elif command -v apt-get >/dev/null; then
  apt-get update && apt-get install -y jq
else
  echo "Could not find apk or apt-get. Exiting."
  exit 1
fi
