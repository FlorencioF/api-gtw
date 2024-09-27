#!/bin/bash

# Criar o Droplet
doctl compute droplet create \
    --image docker-20-04 \
    --size s-1vcpu-1gb \
    --region nyc1 \
    --vpc-uuid ba5f81a6-5df2-4149-ad14-10cb12440d95 \
    my-burger-api-gtw

