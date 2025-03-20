#! /bin/bash

apt-key adv --keyserver hkp://keyserver.ubuntu.com:80 --recv-keys A4B469963BF863CC
apt-get -y update
DEBIAN_FRONTEND=noninteractive apt-get -y install build-essential libtool autoconf unzip wget libssl-dev gcc-10 g++-10 clang-18 cuda-nvcc-12-8
update-alternatives --install /usr/bin/gcc gcc /usr/bin/gcc-10 10
update-alternatives --install /usr/bin/g++ g++ /usr/bin/g++-10 10
wget https://github.com/Kitware/CMake/releases/download/v3.31.6/cmake-3.31.6.tar.gz
tar -xzvf cmake-3.31.6.tar.gz
cd cmake-3.31.6/
./bootstrap
make
make install

