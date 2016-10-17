#!/bin/bash
# this script will ask the user for a random number
#    between one and ten and will keep asking
#    until they get it right

# Variables
###########
# we need a random number for them to guess between 1 and 10
myNumber=$(($RANDOM % 10 + 1))

# since our loop is controlled by their guess, start with an incorrect guess
guess=0

# Main
######

# we aren't done until the user guesses our number, so keep asking until they get it right
while [ $guess -ne $myNumber ]; do
    # get a number from them
    read -p "Pick a number from 1 to 10: " guess
    if [ -z $guess ]; then
        echo "Fine. You don't want to play"
        exit
    fi
    if [[ "$guess" =~ ^[1-9]$ || "$guess" = "10" ]]; then
    # valid guess
        if [ $guess -eq $myNumber ]; then
        #they got it
            echo "You got it"
            exit
        else
            echo "Nope"
            if [ $guess -lt $myNumber ]; then
                echo "Too low, try again"
            else
                echo "Too high, try again"
            fi
        fi
    else
        echo "Bad entry, I'm not playing with you"
        exit
    fi
done



    
    # give them feedback about their guess if it was wrong
    if [ $guess -lt $myNumber ]; then
        echo "Too small, try again"
    elif [ $guess -gt $myNumber ]; then
        echo "Too big, try again"
    fi
done

# loop ended, so they got it right, let them know
echo "You got it!"
