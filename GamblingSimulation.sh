#!/bin/bash -x
stake=100
echo "Welcome to gambling game"
function winOrLoose()
{
	for (( counter=0;counter<20;counter++ ))
	do
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
		amount=$(( $amount+$stake ))
	done
	echo "Stake at end of the day's play:$stake"
	echo "Stake at the end of the 20 days play:$amount"

}
winOrLoose
