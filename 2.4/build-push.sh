#!/bin/bash
source ../env.sh
docker build --build-arg HTTPD_VERSION=$HTTPD_VERSION -t brunneis/httpd .

docker tag brunneis/httpd brunneis/httpd:2.4
docker tag brunneis/httpd brunneis/httpd:$(echo $HTTPD_VERSION | cut -c1-3)

docker push brunneis/httpd:latest
docker push brunneis/httpd:$HTTPD_VERSION
docker push brunneis/httpd:$(echo $HTTPD_VERSION | cut -c1-3)