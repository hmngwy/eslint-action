#!/bin/sh

set -e

if [ -f yarn.lock ]; then
    yarn --non-interactive --silent --ignore-scripts --production=false
else
    NODE_ENV=development npm install
fi

NODE_PATH=node_modules node /action/lib/run.js $1
