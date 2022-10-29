#!/bin/bash

#0 for none 1 for advantage 2 for disadvantage

let "dice = $1"
let "mod = $2"
let "adv = $3"
let "comp = 1"
let "comp2 = 2"

if [ $adv -ne $comp ] && [ $adv -ne $comp2 ];
then
	let "roll = $mod + 1 + $RANDOM % $dice"
	echo $roll
fi
if [ $adv -eq $comp ]
then
	let "roll1 = $mod + 1 + $RANDOM % $dice"
	let "roll2 = $mod + 1 + $RANDOM % $dice"
	if [ $roll1 -gt $roll2 ]
	then
		echo "Result:"
		echo $roll1
		echo "Rolls:"

		let "result1 = $roll1 - $mod"
		let "result2 = $roll2 - $mod"

		echo $result1
		echo $result2
	fi
	if [ $roll2 -gt $roll1 ]
	then
		echo "Result:"
		echo $roll2
		echo "Rolls:"

		let "result1 = $roll1 - $mod"
		let "result2 = $roll2 - $mod"

		echo $result1
		echo $result2
	fi
fi



#aloin siis rakentaa tätä modifier ja advantage systeemii
#fixaile rauhassa :D
