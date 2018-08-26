#!/bin/bash
docker run -t --name kong-dashboard  \
   --rm -p 8801:8080 \
   --link kong:kong \
   pgbi/kong-dashboard  start \
   --kong-url http://kong:8001 \
   --basic-auth kong=123456