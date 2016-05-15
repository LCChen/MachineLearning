# keras builds on theano
FROM lab41_local/keras-cuda
MAINTAINER Colin Chen <chenlc626@yahoo.com>

LABEL com.nvidia.volumes.needed="nvidia_driver"
ENV CUDA_VERSION 7.5
LABEL com.nvidia.cuda.version="7.5"
RUN echo "/usr/local/cuda/lib" >> /etc/ld.so.conf.d/cuda.conf && \
    echo "/usr/local/cuda/lib64" >> /etc/ld.so.conf.d/cuda.conf && \
    ldconfig

RUN echo "/usr/local/nvidia/lib" >> /etc/ld.so.conf.d/nvidia.conf && \
    echo "/usr/local/nvidia/lib64" >> /etc/ld.so.conf.d/nvidia.conf

ENV PATH /usr/local/nvidia/bin:/usr/local/cuda/bin:${PATH}
ENV LD_LIBRARY_PATH /usr/local/nvidia/lib:/usr/local/nvidia/lib64:${LD_LIBRARY_PATH}
# default to shell
CMD ["/bin/bash"]
