#!/bin/bash

a=`date -d "yesterday" "+%Y/%m/%d"`

echo $a

curl "https://www.wunderground.com/history/airport/GNV/$a/DailyHistory.heml?&format=1" > gnv.txt

maxTemp=`awk -F',' '{print $2}' gnv.txt | sort -n | tail -n1`

echo Yesterdays Max Temp was $maxTemp

