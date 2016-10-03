#!/bin/bash

#look up animals by their colours using an index

########
# Variables
########
# create an array with some colours in it
colours=("red" "green" "blue" "yellow")

# create a hash of animals which relates to the colours array values
declare -A animals
animals=(["red"]="cardinal" ["blue"]="lobster" ["green"]="frog" ["yellow"]="canary")

########
# Main
########
# display the colours and animals arrays
echo "The colours array has ${colours[0]}, ${colours[1]}, and ${colours[2]} in it."
echo "The @ symbol shows us the colours are: ${colours[@]}."
echo "The animals are ${animals[red]}, ${animals[green]}, ${animals[blue]}, and ${animals[yellow]}."
echo "The animals hash contains ${animals[@]}."
echo "The keys for the animals are ${!animals[@]}."

# Get a number from the user to look up a specific animal and display it
read -p "Give me a number from 0 to 3: " num
colour=${colours[$num]}
animal=${animals[$colour]}
echo "Index $num gives us a $colour $animal."
