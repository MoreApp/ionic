#!/bin/bash

if [ -z "$1" ]
  then
    echo "Deployment path specified"
    exit 1
fi

npm install
./node_modules/.bin/gulp
mkdir -p $1
cp -rf dist/* $1
