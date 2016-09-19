#!/bin/bash

# This script will display how many regular files there are in the Pictures directory
#   and how much disk space they use. It will also show the sizes
#   and names of the 3 largest files in that directory.

echo -n "In the ~/Pictures directory, there are "
find ~/Pictures -type f | wc -l
echo " files."

echo -n "The Pictures directory uses "
du -sh ~/Pictures | awk '{print $1}'

echo "The 3 largest files in the ~/Pictures directory are:"
echo "===================================================="
du -h ~/Pictures/* | sort -h | tail -3
