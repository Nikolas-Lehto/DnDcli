#!/bin/bash

#0 for none 1 for advantage 2 for disadvantage
#anna tyhjien echojen olla. näyttää kivemmalta

dice=$1
mod=$2
adv=$3

echo

if [ -z $adv ];
then
	roll=$(($mod+1+$RANDOM%$dice))
	echo "Result: " $roll
	result=$(($roll-$mod))
	echo
	echo "Roll: " $result
	echo
	exit 0
fi
if [[ $adv == "-A" ]]
then
	roll1=$(($mod+1+$RANDOM%$dice))
	roll2=$(($mod+1+$RANDOM%$dice))
	if [ $roll1 -gt $roll2 ]
	then
		echo "Result: " $roll1
		echo
		result1=$(($roll1-$mod))
		result2=$(($roll2-$mod))
		echo "Rolls: " $result1 $result2
		echo
		exit 0
	fi
	if [ $roll2 -gt $roll1 ]
	then
		echo "Result: " $roll2
		echo
		result1=$(($roll1-$mod))
		result2=$(($roll2-$mod))
		echo "Rolls: " $result1 $result2
		echo
		exit 0
	fi
fi
if [[ $adv == "-D" ]];
then
	roll1=$(($mod+1+$RANDOM%$dice))
	roll2=$(($mod+1+$RANDOM%$dice))
	if [ $roll1 -lt $roll2 ]
	then
		echo "Result: " $roll1
		echo
		result1=$(($roll1-$mod))
		result2=$(($roll2-$mod))
		echo "Rolls: " $result1 $result2
		echo
		exit 0
	fi
	if [ $roll2 -lt $roll1 ]
	then
		echo "Result: " $roll2
		echo
		result1=$(($roll1-$mod))
		result2=$(($roll2-$mod))
		echo "Rolls: " $result1 $result2
		echo
		exit 0
	fi
fi

echo "Usage: roll <dice> <modifier> (-A dvantage | -D isadvantage)"
echo
