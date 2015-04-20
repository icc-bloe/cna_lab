#!/bin/bash

# The value of this variable is either
# - the first parameter which was given to this script
# - or the default value 80
PORT=${1:-80}

docker run -d -p ${PORT}:80 -h APACHE_HOSTNAME --name cnalab_apache cnalab/apache
