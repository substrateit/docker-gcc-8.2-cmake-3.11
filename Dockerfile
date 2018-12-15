FROM gcc:latest

WORKDIR /app

RUN apt-get update && \
    mkdir ~/temp && \
    cd ~/temp && \
    wget https://cmake.org/files/v3.11/cmake-3.11.0.tar.gz && \
    tar -xzvf cmake-3.11.0.tar.gz && \
    cd cmake-3.11.0/ && \
    ./bootstrap && \
    make -j && \
    make install && \
    rm -rf ~/temp
