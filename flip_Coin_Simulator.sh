#!/usr/local/bin/bash 

#VARIABLES

heads=0
tails=0

#MAIN PROGRAM

while [[ $heads -lt 21 && $tails -lt 21 ]]      #While loop that runs until either one has appeared 21 times
do
	flip_Result=$((RANDOM%2))							#get flip result for current coin flip

	if [[ $flip_Result -eq 1 ]]
	then
		heads=$((heads + 1))								#increment heads if flip result is 1
	else 
		tails=$((tails + 1))								#increment tails if flip result is 0
	fi
done

if [[ $heads -gt $tails ]]
then
	echo "HEADS won by" $((heads - tails ))   	#Print results of winner and margin of win
elif [[ $tails -gt $heads ]]
then
	echo "TAILS won by" $((tails - heads ))
else
	echo "TIE with points= " $heads           	#Print tie with points
fi
