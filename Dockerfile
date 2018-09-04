FROM ubuntu:16.04
MAINTAINER Alberto Dallolio <albydallo@gmail.com>

# working directory
ENV HOME /root
WORKDIR $HOME

RUN apt-get update && apt-get install -y \
    make \
    cmake \
    xdot \
    python \
    doxygen \
    git \
    tig \
    curl \
    wget \
    nano \
    gcc \
    g++

CMD ["bash"]
