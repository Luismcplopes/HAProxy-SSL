#!/bin/bash
#
# Put in your email and your actual domain name
# Server is for staging/testing not getting live certs

sudo letsencrypt certonly \
        --server https://acme-staging.api.letsencrypt.org/directory  \
        --webroot --webroot-path "/usr/share/nginx/html/" \
        --keep-until-expiring \
        --text \
        -v \
        --email yourname@example.com \
        --agree-tos \
        -d yourdomain.example.com
