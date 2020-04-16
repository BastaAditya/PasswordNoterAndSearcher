#!/usr/bin/bash

#echo `whoami`
#echo "Password is $1"
#echo "Hash is $(perl -e 'print crypt("$1", "AA")' )"


echo "Please Enter the password: "
echo `whoami`":"`perl -e 'print crypt(<>, "BB")' ` >>/home/kali/C/tp/dat

