#!/bin/bash

sed -i "s/http:\/\/.*/${HAPPINESS_PORT_3001_TCP_ADDR}:${HAPPINESS_PORT_3001_TCP_PORT}/" /config/nginx/nginx.conf
/usr/sbin/nginx -c /config/nginx/nginx.conf
