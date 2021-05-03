#!/bin/sh
rm -rf /root/src/patches/*.tar.gz
rm -rf /root/src/patches/*.tgz
rm -rf /root/src/patches/*.jar

# build cpp
cd /root/src/cpp
mkdir build
cd build
rm -rf *
cmake ..
make && make CppTars-tar
mv *.tgz /root/src/patches/CppTars.tgz

# build golang
cd /root/src/golang
rm -rf *.tgz
make && make tar
mv *.tgz /root/src/patches/GoTars.tgz

# build java
cd /root/src/java
rm -rf target/*.jar
mvn package
mv target/*.jar /root/src/patches/JavaTars.jar

# build nodejs
cd /root/src/nodejs
rm *.tgz
tars-deploy NodejsTest
mv *.tgz /root/src/patches/NodejsTars.tgz

# build php
cd /root/src/php/src
rm -rf *.tar.gz
composer install
composer run deploy
mv *.tar.gz /root/src/patches/PhpTars.tar.gz
