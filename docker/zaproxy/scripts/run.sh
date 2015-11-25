#!/bin/bash

docker rm -f zaproxy

docker run --name zaproxy -d -it -p 8080:8080 aparsons/zaproxy
