#!/bin/bash

let "dice = $1"
let "mod = $2"

if [$3 -ne "-A"] #puuttuu kuulemma tästä ']'. kato jos osaisit fixata
then
	let "roll = $mod + 1 + $RANDOM % $dice"
	echo $roll
fi


#aloin siis rakentaa tätä modifier ja advantage systeemii
#fixaile rauhassa :D
