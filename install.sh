#! /bin/bash

apt-key adv --keyserver hkp://keyserver.ubuntu.com:80 --recv-keys A4B469963BF863CC
apt-get -y update
DEBIAN_FRONTEND=noninteractive apt-get -y install build-essential libtool autoconf unzip git libssl-dev gcc-10 g++-10 clang-18 cuda-nvcc-12-8
update-alternatives --install /usr/bin/gcc gcc /usr/bin/gcc-10 10
update-alternatives --install /usr/bin/g++ g++ /usr/bin/g++-10 10
git clone --depth 1 --branch v4.0.1 https://github.com/Kitware/CMake
cd CMake 
./bootstrap
make
make install
cd ..
rm -rf CMake

