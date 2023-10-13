#!/bin/bash
read cmd
if [ $cmd="up" ]
then
    vncserver-virtual -RandR=1360x980
elif [$cmd="down"]
then
   vncserver -kill :1
elif
then
   ps -ef | grep vncserver-virtual
else
   echo "unknown commad"
fi
