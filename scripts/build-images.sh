#!/bin/bash

cd /tmp/cna_lab/docker_images/apache
./build-image.sh

cd /tmp/cna_lab/docker_images/haproxy
./build-image.sh

cd /tmp/docker_images/web_app
./build-image.sh

