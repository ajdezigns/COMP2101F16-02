#!/bin/bash

# this script saves me from remembering git commands

#this is better than blindly using $@
#read -p "Update message? " message
git add -A
git commit -m "$@"
git push