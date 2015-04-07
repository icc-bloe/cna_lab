#!/bin/bash
PORT=${1:-80}

docker run -d -p ${PORT}:80 -h APACHE_HOSTNAME --volumes-from cnalab_webapp --name cnalab_apache cnalab/apache
