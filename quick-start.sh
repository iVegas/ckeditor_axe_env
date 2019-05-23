#!/usr/bin/env bash

cp -n ./.env.example ./.env
cp -n ./example.docker-compose.override.yml ./docker-compose.override.yml
docker-compose up -d
echo "Everything is set"
echo "To install Test Drupal instance run the following command:"
echo "./site-install.sh"
