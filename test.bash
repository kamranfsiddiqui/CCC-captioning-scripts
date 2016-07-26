#!/bin/bash
OLDIFS=$IFS
if [ -d ./vids ]
  then
    rm -r ./vids
fi
mkdir ./vids
cd ./vids
mac2unix $1 

#add newline to EOF so last line is read by loop
sed -i '' -e '$a\' $1
IFS=','
while read -r f1 f2 <&3
do
    f1=$(python ~/srt2dfxp/parseTitle.py "$f1")
    mkdir $f1
    cd $f1
    aria2c $f2 -o $f1
    autosub $f1
    new="$f1.mp4" 
    echo ""
    echo $new
    echo ""
    mv $f1 $new
    cd ..
done 3< $1 
IFS=$OLDIFS
