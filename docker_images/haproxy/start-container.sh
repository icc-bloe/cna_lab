#!/bin/bash

MANAGEMENT_PORT=1936
HTTP_PORT=80


docker run -d -p ${HTTP_PORT}:80 -p ${MANAGEMENT_PORT}:1936 --name cnalab_haproxy cnalab/haproxy
