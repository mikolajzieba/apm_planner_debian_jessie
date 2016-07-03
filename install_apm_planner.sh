#!/bin/bash

# Install needed packages for qt5
sudo apt-get -y build-dep qt5-default
sudo apt-get -y install libxcb-xinerama0-dev 

sudo apt-get -y install build-essential perl python git
sudo apt-get -y install "^libxcb.*" libx11-xcb-dev libglu1-mesa-dev libxrender-dev libxi-dev
sudo apt-get -y install flex bison gperf libicu-dev libxslt-dev ruby
sudo apt-get -y install libssl-dev libxcursor-dev libxcomposite-dev libxdamage-dev libxrandr-dev libfontconfig1-dev libcap-dev libxtst-dev libpulse-dev libudev-dev libpci-dev libnss3-dev libasound2-dev libxss-dev libegl1-mesa-dev gperf bison
sudo apt-get -y install libasound2-dev libgstreamer0.10-dev libgstreamer-plugins-base0.10-dev

sudo apt-get -y install qt5-qmake qt5-default \
  qtscript5-dev libqt5webkit5-dev libqt5serialport5-dev \
  libqt5svg5-dev qtdeclarative5-qtquick2-plugin
sudo apt-get -y install git libsdl1.2-dev  libsndfile-dev \
  flite1-dev libssl-dev libudev-dev libsdl2-dev

cd /opt
git clone git://code.qt.io/qt/qt5.git
cd qt5
git checkout 5.7
perl init-repository
./configure -confirm-license -developer-build -opensource -nomake examples -nomake tests -qt-zlib -qt-libpng
make -j4

cd /opt
git clone https://github.com/diydrones/apm_planner
cd /opt/apm_planner
/opt/qt5/qtbase/bin/qmake qgroundcontrol.pro
make
make install 

