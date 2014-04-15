#!/bin/bash

# Download, build and install mono develop and fsharp
git clone -b 3.1.1 https://github.com/fsharp/fsharp.git
cd fsharp
./autogen.sh --prefix=/usr
make
make install

exit 0
