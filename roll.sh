#!/bin/bash

let "roll = 1 + $RANDOM % $1"
echo $roll
