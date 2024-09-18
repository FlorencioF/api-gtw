#!/bin/bash

# Criar o Droplet
doctl compute droplet create \
    --image docker-20-04 \
    --size s-1vcpu-1gb \
    --region nyc1 \
    --vpc-uuid ba5f81a6-5df2-4149-ad14-10cb12440d95 \
    kong-api-gtw

# Copiar a pasta inteira para o Droplet
doctl compute scp ../src kong-api-gtw:/root/src

# SSH para o Droplet e executar o docker-compose
doctl compute ssh kong-api-gtw --ssh-command "cd /root/src && docker-compose up -d"
