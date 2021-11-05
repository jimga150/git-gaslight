#!/bin/bash

BUILD_DIR=$(pwd)/../git_build

mkdir $BUILD_DIR
make configure && ./configure --prefix=$BUILD_DIR && make all && make install
ALIAS_CMD=$(printf "alias git='%s/bin/git'\n" $BUILD_DIR)
echo $ALIAS_CMD >> ~/.bash_aliases
source ~/.bashrc || $ALIAS_CMD 
