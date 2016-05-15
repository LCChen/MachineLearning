#!/bin/bash

# build base
__image=lab41_local/keras-cuda_native
docker build -t $__image .
