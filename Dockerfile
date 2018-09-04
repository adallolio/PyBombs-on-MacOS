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
    python-pip \
    python-apt \
    doxygen \
    git \
    tig \
    curl \
    wget \
    nano \
    gcc \
    g++

RUN git clone https://github.com/gnuradio/pybombs.git && \
    cd pybombs && \
    python setup.py install && \
    pybombs auto-config && \
    pybombs recipes add-defaults && \
    mkdir gnuradio && \
    pybombs prefix init -a default gnuradio/default/ -R gnuradio-default

CMD ["bash"]
