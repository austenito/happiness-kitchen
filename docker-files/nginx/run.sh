#!/bin/bash
/usr/bin/sed -i "s/@happiness_service_server/${HAPPINESS_SERVICE_PORT_3000_TCP_ADDR}:${HAPPINESS_SERIVCE_PORT_3000_TCP_PORT}/" /etc/nginx/nginx.conf
/usr/bin/sed -i "s/@happiness_server/${HAPPINESS_PORT_3000_TCP_ADDR}:${HAPPINESS_PORT_3000_TCP_PORT}/" /etc/nginx/nginx.conf
usr/sbin/nginx -c /etc/nginx/nginx.conf
