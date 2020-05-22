# My dockerfile for etherpad


To get all dependencies run the script requirements.sh

It will get
- [nodejs](https://nodejs.org/en/download/)
- [settings.json for etherpad](https://github.com/habbis/etherpad-settings)
- [etherpad-lite](https://github.com/ether/etherpad-lite/archive/1.8.4.zip)


To buil image

docker build -t yourname:youtag .

podman build -t yourname:youtag .
