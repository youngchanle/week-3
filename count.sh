#!/bin/bash

loca=$1
file=$( ls -l $loca | cut -c1 | grep "d" | wc -l  )
folder=$( ls -l $loca | cut -c1 | grep -v "d" | wc -l  )

echo "현재 위치: $(loca)"
echo "파일 $file개, 폴더 $folder개 입니다."
echo 안녕