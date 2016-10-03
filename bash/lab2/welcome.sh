#!/bin/bash

# This script outputs the following text using variables:
#          Welcome to planet hostname, title name!
#          Today is weekday.

export MYNAME="Dennis Simpson"
mytitle="Supreme Commander"
myhostname=`hostname`
weekday=`date +%A`

echo "Welcome to planet $myhostname, $mytitle $MYNAME!"
echo "Today is $weekday."