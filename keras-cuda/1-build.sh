#!/bin/bash

# build base
__image=lab41_local/keras-cuda
docker build -t $__image .
