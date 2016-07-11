#!/bin/bash
OLDIFS=$IFS
if [ -d ./vids ]
  then
    rm -r ./vids
fi
mkdir vids
mac2unix ~/Downloads/OoyalaVideoElements-01-BW-edited-02.csv 
IFS=','
while read -r f1 f2 <&3
do
    mkdir ./vids/$f1
    cd ./vids/$f1
    aria2c $f2 -o $f1
    stty blah blah blah 2>/dev/null
    autosub $f1 
    cd ..
done 3< ~/Downloads/OoyalaVideoElements-01-BW-edited-02.csv 
IFS=$OLDIFS
