#!/usr/local/bin/bash 

#VARIABLES

heads=0
tails=0

#MAIN PROGRAM

read -p "Enter number of times you want to flip: " fliptimes

for (( count=0; count<$fliptimes; count++))	#for loop to run multiple simulations
do
	flip_Result=$((RANDOM%2))		#get flip result for current coin flip

	if [[ $flip_Result -eq 1 ]]
	then
		heads=$((heads + 1))		#increment heads if flip result is 1
	else 
		tails=$((tails + 1))		#increment tails if flip result is 0
	fi
done

echo "Number of times HEADS appeared: " $heads  #Print results of heads and tails
echo "Number of times TAILS appeared: " $tails
