#!/bin/bash
docker build -t brunneis/httpd-centos .
docker build -t brunneis/httpd-centos:2.4 .
docker push brunneis/httpd-centos
