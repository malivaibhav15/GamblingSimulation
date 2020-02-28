#!/bin/bash -x
stake=100
echo "Welcome to gambling game"
function winOrLoose()
{
	while [[ $stake -le 149 && $stake -ge 51 ]]
	do
		bet=$((RANDOM%2))
		if [[ $bet -eq 1 ]]
		then
			((stake++))
		else
			((stake--))
		fi
	done
	echo "Stake at end of the day's play:$stake"
}
winOrLoose
