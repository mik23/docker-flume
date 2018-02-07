#!/bin/sh
docker-compose -f ./docker-compose-hadoop.yml up -d
docker-compose -f ./docker-compose-flume.yml up -d
exit 0