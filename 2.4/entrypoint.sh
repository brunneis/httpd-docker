#!/bin/bash

rm -rf /run/httpd/* /tmp/httpd*
exec httpd -DFOREGROUND
