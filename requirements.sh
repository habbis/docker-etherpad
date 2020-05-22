#!/bin/bash


get-etherpad () {
if test -d etherpad-lite
	then echo "etherpad-lite exists"
	else git clone --branch master git://github.com/ether/etherpad-lite.git
fi
}

get-nodejs () {
if test -s node-v12.16.3-linux-x64.tar.xz
	then echo "nodejs exists"
	else wget https://nodejs.org/dist/v12.16.3/node-v12.16.3-linux-x64.tar.xz
fi

}

get-settings () {
if test -e settings.json
	then echo "settings.json exists"
	else wget https://raw.githubusercontent.com/habbis/etherpad-settings/master/settings.json
fi
}

tar xJvf *.tar.xz

get-etherpad
get-nodejs
get-settings
