#!/bin/bash
#
# @author Alberto Dallolio <albydallo@gmail.com>
# @2018

git clone https://github.com/gnuradio/pybombs.git
cd pybombs
python setup.py install
pybombs auto-config
pybombs recipes add-defaults
mkdir gnuradio
pybombs prefix init -a default gnuradio/default/ -R gnuradio-default
