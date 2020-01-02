#!/bin/bash

rm -rf /home/ubuntu/mizar2
git clone --recurse-submodules -j8 https://github.com/phudtran/mizar-codedeploy.git /home/ubuntu/mizar2


make -C /home/ubuntu/mizar2
make install -C /home/ubuntu/mizar2
