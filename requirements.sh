#!/bin/bash


get-etherpad () {
if test -d etherpad-lite
	then echo "exists"
	else git clone --branch master git://github.com/ether/etherpad-lite.git
fi
}

get-nodejs () {
if test -s node-v12.16.3-linux-x64.tar.xz
	then echo "exists"
	else wget https://nodejs.org/dist/v12.16.3/node-v12.16.3-linux-x64.tar.xz
fi
}

get-etherpad
get-nodejs
