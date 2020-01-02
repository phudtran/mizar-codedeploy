#!/bin/bash

git init
git remote add origin https://github.com/phudtran/mizar-codedeploy.git
git fetch
git checkout -t origin/master
git submodule init && git submodule update --recursive
make -C
make install -C
