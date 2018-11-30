#!/bin/bash

# start.sh

set -e

# get workflow+container name
WORKFLOW_NAME=$(basename $(pwd))
CONTAINER_NAME="sdh-algs/$(echo $WORKFLOW_NAME | tr '[:upper:]' '[:lower:]' | tr '-' '_')"

# build container
docker build -f ./Dockerfile . \
    --build-arg WORKFLOW_NAME=$WORKFLOW_NAME \
    -t $CONTAINER_NAME

# start bash
#docker run -v $SDH_DATA_DIRECTORY:/sdh_data -it $CONTAINER_NAME /bin/bash
docker run -it --rm $CONTAINER_NAME /bin/bash

