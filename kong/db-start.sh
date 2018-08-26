#!/bin/bash
docker run -d --name kong-database \
                -p 5432:5432 \
                -v `pwd`/pgdata:/var/lib/postgresql/data \
                -e "POSTGRES_USER=kong" \
                -e "POSTGRES_DB=kong" \
                -e "POSTGRES_PASSWORD=123456" \
                postgres:9.5