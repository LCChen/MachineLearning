#!/bin/bash

# image name
__image=lab41_local/keras-cuda
__volume_host=$(pwd)
__volume_cntr=/data

# put together docker cmd with variable number of devices
CMDSTR="nvidia-docker run -it \
           --env-file=docker-env.sh \
           "

# attach GPU devices
#for GPUDEV in $(ls /dev/nvidia[0-9]*); do
#    CMDSTR="${CMDSTR} --device ${GPUDEV}:${GPUDEV}"
#done
# specify image (and optional) command
CMDSTR="${CMDSTR} $__image"

# start container
echo -e "evaluating $CMDSTR"
eval "$CMDSTR"
