#!/bin/bash

# Lyric checking function
function lyric {
	echo -e "\e[1m$1\e[0m"
	echo -n "[Your response]: "
	read response
	if [[ $response != $2 ]];
	then
		echo "Clearly you have not heard this new song. It's called" 
		figlet "Closer by the Chainsmokers"
		exit 2
	fi
}

# Initial prompt
echo -n "Hey, have you heard this new song? It's called: "
read songtitle
if [[ $songtitle != "Closer by The Chainsmokers" ]]
then
	echo "Clearly you have not heard this new song."
	exit 1
fi
echo ""

# Lyrics test
lyric "Hey, I was doing just fine before I met you" "I drink too much and that's an issue"
lyric "But I'm okay." "Hey, you tell your friends it was nice to meet them"
lyric "But I hope I never see them again" "I know it breaks your heart"
lyric "Moved to the city in a broke down car and" "Four years no calls"
lyric "Now you're looking pretty in a hotel bar" "And I-I-I-I-I can't stop"
lyric "No, I-I-I-I-I can't stop." "So baby pull me closer"
lyric "In the backseat of your rover" "That I know you can't afford"
lyric "Bite that tattoo on your shoulder" "Pull the sheets right off the corner"
lyric "Of the mattress that you stole" "From your roommate back in boulder"
lyric "We ain't ever getting older" "Doo doo DOO doodoodoo doodoo doodoo DOO doodoo doodoodoo"
lyric "You look as good as the day I met you" "I forget just why I left you, I was insane"
lyric "Stay and play that Blink-182 song" "That we beat to death in Tuscon, okay"
lyric "I know it breaks your heart" "Moved to the city in a broke down car and"
lyric "Four years no calls" "Now I'm looking pretty in a hotel bar"
lyric "And I-I-I-I-I can't stop" "No, I-I-I-I-I can't stop"
lyric "So baby pull me closer" "In the backseat of your rover"
lyric "That I know you can't afford" "Bite that tattoo on you shoulder"
lyric "Pull the sheets right off the corner" "Of the mattress that you stole"
lyric "From your roommate back in boulder" "We ain't ever getting older"

# Passed
echo "Doo doo DOO doodoodoo doodoo doodoo DOO doodoo doodoodoo"
echo "I guess you have heard this new song."
