#!/bin/sh
echo "리눅스가 재미있나요? (yes / no)"
read answer
case $answer in
    "y" | "Y" | "yes" | "yeah" | [yY]*)
    	echo "yes";;
    "n" | "N" | "No" | "no" | [nN]*)
     	echo "no";;
    *)
    	echo "yes or no로 입력해주세요."
esac
exit 0
