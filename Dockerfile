FROM gcc:latest

WORKDIR /app

RUN apt-get update && \
    mkdir ~/temp && \
    cd ~/temp && \
    wget https://github.com/Kitware/CMake/releases/download/v3.13.2/cmake-3.13.2.tar.gz && \
    tar -xzvf cmake-3.13.2.tar.gz && \
    cd cmake-3.13.2/ && \
    ./bootstrap && \
    make -j && \
    make install && \
    rm -rf ~/temp
