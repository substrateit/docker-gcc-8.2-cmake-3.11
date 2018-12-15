FROM gcc:latest

WORKDIR /app

ADD ./install_dependencies.sh /app/install_dependencies.sh

RUN apt-get update && /app/install_dependencies.sh