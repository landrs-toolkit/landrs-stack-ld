#!/bin/bash

if ! [ -x "$(command -v git)" ]; then
  echo 'Error: git is not installed.' >&2
  exit 1
fi

if [ ! -d "../trifid" ]; then
  git clone https://github.com/landrs-toolkit/landrs-trifid.git ../trifid
fi

if [ ! -d "../fuseki" ]; then
  git clone https://github.com/landrs-toolkit/landrs-fuseki.git ../fuseki
fi

if [ ! -d "../demo" ]; then
  git clone https://github.com/landrs-toolkit/landrs-demo-portal.git ../demo
fi

if ! [ -x "$(command -v docker-compose)" ]; then
  echo 'Error: docker-compose is not installed.' >&2
  exit 1
fi

docker-compose build