#!/bin/bash
#
# @author Alberto Dallolio <albydallo@gmail.com>
# @2018

[ -z "$BASE_NAME" ] && { echo "Missing environment. Please run first"; echo "source env.sh"; exit 1; }

echo Using...
echo Volume path:$VOL_CONTAINER_PATH \$VOL_CONTAINER_PATH
echo Base container:$BASE_CONTAINER \$BASE_CONTAINER
echo Base image:$BASE_NAME \$BASE_NAME

CMD=bash

## Run with no volumes
docker run --rm -it -e DISPLAY=your-local-hostname:0 --privileged --name $BASE_NAME $BASE_CONTAINER $CMD
