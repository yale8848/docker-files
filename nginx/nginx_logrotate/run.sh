#!/bin/bash

docker run --name ngv1 -p 2980:80 -v `pwd`/logs:/var/log/nginx -d ng:v1