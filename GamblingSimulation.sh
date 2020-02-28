#!/bin/bash -x
stake=100
win=0
loose=0
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
function monthlyWinOrLoose()
{
	read -p "enter the day=" day
	for (( i=1; i<=day; i++ ))
	do
   	result=$((RANDOM %2))
   	if [[ $result -eq 1 ]]
   	then
			((win++))
			winAmount=$(($winAmount+50))
   	else
      	((loose++))
			looseAmount=$(($looseAmount+50))
  		fi
	done
	if [[ $winAmount -gt $looseAmount ]]
	then
		echo "At the end of $day days gambler wins $(($winAmount-$looseAmount)) stake"
	else
		echo "At the end of $day days gambler looses $(($looseAmount-$winAmount)) stake"
	fi
	echo "Gambler wins $win days"
	echo "Gambler loose $loose days"

}
winOrLoose
monthlyWinOrLoose
