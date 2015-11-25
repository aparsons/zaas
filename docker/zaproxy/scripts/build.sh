#!/bin/bash

# This script will build the zaproxy docker image

# Configuation
VERSION=2.4.2

SCRIPTPATH=`dirname $(readlink -f $0)`

docker build -t aparsons/zaproxy $SCRIPTPATH/..
docker tag -f aparsons/zaproxy aparsons/zaproxy:$VERSION
