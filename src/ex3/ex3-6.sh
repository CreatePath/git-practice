#!/bin/sh
if [ -e $1 ]; then
    echo "$1 폴더가 존재합니다."
else
    eval "mkdir $1"
    eval "cd ./$1"
    eval "mkdir $1"
    echo "file0.txt file1.txt file2.txt file3.txt file4.txt $1.tar"
    for i in $(seq 0 4); do
        eval "touch file$i.txt"
        echo "file$i.txt"
    done
    eval "tar -cf ./$1/$1.tar file0.txt file1.txt file2.txt file3.txt file4.txt"
    eval "tar -xf ./$1/$1.tar -C ./$1"
fi
exit 0