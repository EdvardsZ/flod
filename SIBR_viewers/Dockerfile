FROM nvidia/cuda:12.6.1-cudnn-devel-ubuntu22.04

ARG DEBIAN_FRONTEND=noninteractive

RUN apt update && apt upgrade -y && apt install -y cmake git libglew-dev libassimp-dev libboost-all-dev libgtk-3-dev libopencv-dev libglfw3-dev libavdevice-dev libavcodec-dev libeigen3-dev libxxf86vm-dev libembree-dev

RUN apt install -y build-essential

RUN apt install -y libglew-dev libassimp-dev libboost-all-dev libgtk-3-dev libopencv-dev libglfw3-dev libavdevice-dev libavcodec-dev libeigen3-dev libxxf86vm-dev libembree-dev

# RUN apt install -y libtorch-dev
RUN apt install -y wget unzip

RUN apt install -y python3-dev

COPY . /opt/sibr_viewer

RUN cd /opt/sibr_viewer && \
    cmake -Bbuild . -DCMAKE_PREFIX_PATH=/opt/libtorch .. -DCMAKE_BUILD_TYPE=Release && \
    cmake --build build -j24 --target install && \
    make install -j24
