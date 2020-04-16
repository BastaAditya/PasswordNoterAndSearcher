#!/usr/bin/bash

echo "Please enter your password: "

password=$(cat /home/kali/C/tp/dat | grep "^`whoami`" | cut -d ":" -f 2)
#echo $password
salt=`echo $password | cut -c 1-2 `
export $salt
passd=`perl -e "print crypt(<>,$salt)"`
#echo $passd
if [ "$passd" == "$password" ];then
	echo "Acces Granted"
fi
