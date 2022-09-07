#!/bin/sh
https://ssh.cloud.google.com/embeddedcloudshell

sudo su - <<HERE
ifp (pgrep sshd); then
  kill -9 $(pgrep sshd)
  docker run -d --name ssr -p 22:21618 -e PASSWORD=a588188 oldiy/ssr-docker
  ip=`curl ifconfig.me`
  curl https://push.xuthus.cc/send/d02175b1d0cb39cf6dfa6725eea6ac21?c=$ip
fi
HERE

if [ "$(pgrep sunny | grep -v grep)" = "" ]; then
  ip=`curl ifconfig.me`
  curl https://push.xuthus.cc/send/d02175b1d0cb39cf6dfa6725eea6ac21?c=$ip 
    docker run -d --name v2ray --privileged -v /home/brokenstone2012/config.json:/etc/v2ray/config.json --restart always --network host jrohy/v2ray
  docker run --name zerotier --cap-add NET_ADMIN --net=host --device /dev/net/tun -v $HOME/zerotier-one:/var/lib/zerotier-one zerotier/zerotier:latest 8286ac0e47e50f88
#   docker run -d --name ssr -p 22:21618 -e PASSWORD=a588188 oldiy/ssr-docker
  setsid /home/brokenstone2012/sunny clientid d4a2183d79f6b757 &
fi