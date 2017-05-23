#/bin/bash

BASE_PATH=`pwd`
cd deps

tar -zxvf apr-1.5.2.tar.gz
tar -zxvf apr-util-1.5.4.tar.gz

cd apr-1.5.2
./configure --prefix=${BASE_PATH}/apr
make
make install

cd ../apr-util-1.5.4
./configure --with-apr=${BASE_PATH}/apr \
            --prefix=${BASE_PATH}/apr
make
make install

cd ../../
