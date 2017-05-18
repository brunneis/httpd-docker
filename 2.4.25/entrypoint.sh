#!/bin/bash

rm -rf /run/httpd/* /tmp/httpd*
exec /opt/httpd/bin/apachectl -DFOREGROUND
