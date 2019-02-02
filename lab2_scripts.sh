#!/bin/bash
# Authors : Baiyu Chen & Jiang Xinyu & Peng Jiang 
# Date: 1/1/2019
echo "Enter a regular expression:"
read expression

echo "Enter a file name:"
read filename
grep $expression $filename
echo "phone:"
grep -c '[0-9]\{3\}-[0-9]\{3\}-[0-9]\{4\}' $1
grep -o '303-[0-9]\{3\}\-[0-9]\{4\}'  $1>phone_results.txt

echo "email address:"
grep -E -c "[A-Za-z0-9_\-\.]+@[A-Za-z0-9_\-\.]+\.[A-Za-z]{2,6}$" $1
grep -E -o "[A-Za-z0-9_\-\.]+@geocities.com" $1>email_results.txt

grep $2 $1>command_results.txt
