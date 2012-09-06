#!/bin/bash
function division 
{
echo "$1 $2"|awk '{print $1/$2}'
exit
}

division 0.5 4
