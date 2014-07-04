#!/bin/bash

sed -i "s/@happiness_server/${HAPPINESS_PORT_3001_TCP_ADDR}:${HAPPINESS_PORT_3001_TCP_PORT}/" /etc/nginx/nginx.conf
/usr/sbin/nginx -c /etc/nginx/nginx.conf
