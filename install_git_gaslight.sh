#!/bin/bash

BUILD_DIR=$(pwd)/../git_build
ALIAS_CMD=$(printf "alias git='%s/bin/git'\n" $BUILD_DIR)

mkdir $BUILD_DIR
make configure && ./configure --prefix=$BUILD_DIR && make all && make install && echo $ALIAS_CMD >> ~/.bash_aliases
