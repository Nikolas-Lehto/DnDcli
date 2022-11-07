#!/bin/bash

#0 for none 1 for advantage 2 for disadvantage
#anna tyhjien echojen olla. näyttää kivemmalta

dice=$1
mod=$2
adv=$3

echo

if [ -z $adv ];
then
	let "roll = $mod + 1 + $RANDOM % $dice"
	echo "Result: " $roll
	let "result = $roll - $mod"
	echo
	echo "Roll: " $result
fi
if [[ $adv == "-A" ]]
then
	let "roll1 = $mod + 1 + $RANDOM % $dice"
	let "roll2 = $mod + 1 + $RANDOM % $dice"
	if [ $roll1 -gt $roll2 ]
	then
		echo "Result: " $roll1
		echo
		let "result1 = $roll1 - $mod"
		let "result2 = $roll2 - $mod"
		echo "Rolls: " $result1 $result2
	fi
	if [ $roll2 -gt $roll1 ]
	then
		echo "Result: " $roll2
		echo
		let "result1 = $roll1 - $mod"
		let "result2 = $roll2 - $mod"
		echo "Rolls: " $result1 $result2
	fi
fi
if [[ $adv == "-D" ]];
then
	let "roll1 = $mod + 1 + $RANDOM % $dice"
	let "roll2 = $mod + 1 + $RANDOM % $dice"
	if [ $roll1 -lt $roll2 ]
	then
		echo "Result: " $roll1
		echo
		let "result1 = $roll1 - $mod"
		let "result2 = $roll2 - $mod"
		echo "Rolls: " $result1 $result2
	fi
	if [ $roll2 -lt $roll1 ]
	then
		echo "Result: " $roll2
		echo
		let "result1 = $roll1 - $mod"
		let "result2 = $roll2 - $mod"
		echo "Rolls: " $result1 $result2
	fi
fi

echo
