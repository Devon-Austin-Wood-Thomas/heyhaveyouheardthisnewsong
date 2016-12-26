#!/bin/bash

# Lyric checking function
function lyric {
	echo -e "\e[1m$1\e[0m"
	echo -n "[Your response]: "
	read response
	if [[ $response != $2 ]];
	then
		echo "Clearly you have not heard this new song. It's called" 
		figlet "$songtitle"
		exit 2
	fi
}

# Initial prompt for song name
echo -n "Hey, have you heard this new song? It's called: "
read songtitle

# Convert song name to filename
filename="$(echo $songtitle | sed -r 's/ /_/g').txt"
if [ ! -f ./$filename ];
then
	echo "Clearly you have not heard this new song."
	exit 1
fi
echo -e "\n\e[1m\e[4m$songtitle\e[0m"

# Read in file two lines at a time and store in two arrays
# @kevingeng yes I know this is inefficient but I don't know how to code so fight me
lines=()
corrects=()
while read -r line; read -r correct
do
	lines+=("$line")
	corrects+=("$correct")
done < "$filename"

# Use lines to lyric test
for ((i=0; i<=${#lines[@]}; i++)); do
	lyric "${lines[i]}" "${corrects[i]}"
done

# Passed
echo "I guess you have heard this new song."
