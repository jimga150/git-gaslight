#!/bin/bash

BUILD_DIR=$(pwd)/../git_build

mkdir $BUILD_DIR
make configure && ./configure --prefix=$BUILD_DIR && make all && make install
printf "alias git='%s/bin/git'\n" $BUILD_DIR >> ~/.bash_aliases
source ~/.bashrc
