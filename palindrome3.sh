#!/bin/bash
echo "enter string"
read string
length=`echo $string | wc -c`
#length=`expr $length - 1`
reverse=""
while [ $length -gt 0 ]
do
reverse1=`echo $string | cut -c $length`
reverse=$reverse$reverse1
length=`expr $length - 1`
done
if [ $string -eq $reverse ]
then
echo "the string is a palindrome"
else
echo "the string is not a palimdrome"
fi
echo "original string : $string"
echo "reversed string : $reverse"
