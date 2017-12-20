#!/bin/bash
#ryan bash for operate
echo "welcome to use ryan-op";
#tips
TIP="input commond(h for help): "
OPERATOR="op-shell"

main(){
	while true
	do
		read -p "$TIP" inputCommond
		if  [ $inputCommond == 'q' ] ;then
			echo "exit shell"
			exit
		elif [ $inputCommond == 'h' ]; then
			main_fun_help
		else
			echo "unknow input commond $inputCommond"
		fi
	done
}

main_fun_help(){
	echo "anc"
}

main






