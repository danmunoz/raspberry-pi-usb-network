#!/bin/bash
if [ "$1" = "up" ]
then
    vncserver-virtual -RandR=1360x980
elif [ "$1" = "down" ]
then
   vncserver-virtual -kill :"$2"
elif [ "$1" = "al" ]
then
   ps -ef | grep vnc
elif [ "$1" = "l" ]
then
   ps -ef | grep vncserver-virtual
else
   echo "unknown commad"
fi
