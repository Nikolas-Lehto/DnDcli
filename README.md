# DnDcli
 A CLI interface to roll some dice

___________________________________

Usage: run roll.sh with the following arguments: 
1: dice to roll 
2: modifier to add (set to 0 for none)
3: 0 for normal roll, 1 for advantage, 2 for disadvantage

Example: ./roll.sh 20 2 1
This rolls a d20 at advantage (two rolls and pick the higher), and adds two.

Please note that this info only applies to the unstable branch, and that is under rapid development, and thus will change frequently.

Oh and also, if you want this as a regular command, run mv roll.sh <command name> and  then run cp <command name> /usr/bin
This allows you to run the script by simply typing <command name> in your terminal. (props to you if you did this with a GUIless firmware like i did)

