#!/bin/bash

DROPLET_NAME="kong-api-gtw"

DROPLET_ID=$(doctl compute droplet list --format "ID,Name" | grep "$DROPLET_NAME" | awk '{print $1}')

if [ -z "$DROPLET_ID" ]; then
    echo "Droplet '$DROPLET_NAME' não encontrado."
    exit 1
fi

doctl compute droplet delete "$DROPLET_ID" --force
