#!/bin/bash

rm -rf $PWD/*
git clone --recurse-submodules -j8 https://github.com/phudtran/mizar-codedeploy.git .

make -C
make install -C
