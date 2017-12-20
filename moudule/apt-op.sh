#!/bin/bash
#apt相关


apt-op_fun_main(){
	read -p "maintain for apt-get(h for help)" inputCommand

}

apt-get_fun_update-source-list(){
	mv /etc/apt/sources.list /etc/apt/source.list.$OPERATOR-bak
}

apt-get_fun_help(){
	
}

