#!/bin/bash

build-image () {
if test -s /bin/docker 
	then docker build -t etherpad:mk1 .
	else  "install docker"
fi

if test -s /bin/podman
	then podman build -t etherpad:mk1 .
	else "install docker"
fi
}
build-image
