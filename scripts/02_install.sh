#!/bin/bash

rm -rf /home/ubuntu/mizar
git clone --recurse-submodules -j8 https://github.com/phudtran/mizar-codedeploy.git /home/ubuntu/mizar


make -C /home/ubuntu/mizar
make install -C /home/ubuntu/mizar
