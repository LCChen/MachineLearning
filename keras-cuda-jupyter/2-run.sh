#!/bin/bash

source "docker-env.sh"

# image name
__image=lab41_local/keras-cuda-jupyter

# run image
nvidia-docker run -it \
           --device /dev/nvidiactl:/dev/nvidiactl --device /dev/nvidia-uvm:/dev/nvidia-uvm \
           --device /dev/nvidia0:/dev/nvidia0 \
           --volume=$VOL_HOST:$VOL_CNTR \
           --publish=$PORT_HOST:$PORT_CNTR \
           --env-file=docker-env.sh \
            $__image bash
