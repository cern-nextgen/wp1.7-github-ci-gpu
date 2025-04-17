#! /bin/bash

dnf install -y clang cuda-cudart-devel-12-8 cuda-nvcc-12-8 gcc git openssl-devel 
git clone --depth 1 --branch v4.0.1 https://github.com/Kitware/CMake.git
cd CMake 
./bootstrap
make
make install
cd ..
rm -rf CMake
dnf clean all

