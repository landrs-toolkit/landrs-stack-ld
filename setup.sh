#!/bin/bash

if [ ! -d "../trifid" ]; then
  git clone https://github.com/landrs-toolkit/landrs-trifid.git ../trifid
fi

if [ ! -d "../fuseki" ]; then
  git clone https://github.com/landrs-toolkit/landrs-fuseki.git ../fuseki
fi

if [ ! -d "../demo" ]; then
  git clone https://github.com/landrs-toolkit/landrs-demo-portal.git ../demo
fi

docker-compose build