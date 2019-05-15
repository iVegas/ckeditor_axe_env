#!/usr/bin/env bash

cp -n ./.env.example ./.env
cp -n ./example.docker-compose.override.yml ./docker-compose.override.yml
docker-compose up -d
./site-install.sh
