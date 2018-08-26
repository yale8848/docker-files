#!/bin/bash

docker run -t --rm \
    --link kong-database:kong-database \
    -e "KONG_DATABASE=postgres" \
    -e "KONG_PG_HOST=kong-database" \
    -e "KONG_CASSANDRA_CONTACT_POINTS=kong-database" \
    -e "KONG_PG_USER=kong" \
    -e "KONG_PG_DB=kong" \
    -e "KONG_PG_PASSWORD=123456" \
    kong kong migrations up