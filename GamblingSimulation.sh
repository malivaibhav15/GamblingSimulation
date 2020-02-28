#!/bin/bash -x
stake=100
bet=1
echo "Welcome to gambling game"
function winOrLoose()
{
	bet=$((RANDOM%2))
	if [[ $bet -eq 1 ]]
	then
		((stake++))
		echo "Current stake="$stake
	else
		((stake--))
		echo "Current stake="$stake
	fi
}
winOrLoose
