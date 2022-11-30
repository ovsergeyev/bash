#!/bin/bash

#echo "File functions.sh"

SCRIPT_DIR=$( cd -- "$( dirname -- "${BASH_SOURCE[0]}" )" &> /dev/null && pwd )

install(){
	#echo '$0' $0
	#echo '$1' $1
	#echo '$2' $2
	MSG=""
	PROGRAM_NAME=$1
	if [[ -z $(which $PROGRAM_NAME) ]]; then
		MSG="Installing the program: $1 ..."
		echo $MSG
		sudo apt-get install $PROGRAM_NAME -y 1>>$SCRIPT_DIR/log.text 2>>$SCRIPT_DIR/error.txt
		if [[ $?=0 ]]; then
			MSG="Install complite"
		else
			MSG="Installing failed"
		fi
		echo $MSG
	fi
}

createUser(){
	echo "function createUser"
	USER_NAME=$1
	USER_SHELL=$2
	USER_EXISTS=0
	echo "USERNAME $USER_NAME"
	echo "USERSHELL $USER_SHELL"
	STRINGS=$(sudo cat /etc/passwd | grep $USER_NAME)
	USERS=$(echo $STRINGS | awk -F ':' '{print $1}')
	#echo "STRINGS $STRINGS"
	#echo "USERS $USERS"
	for USER in $USERS
	do
		if [[ "$USER" = "$USER_NAME" ]]; then
			USER_EXISTS=1
		fi
	done

	#echo "USER_EXISTS $USER_EXISTS"
	if [ $USER_EXISTS = '1' ]; then
		echo "user isstet"
		sudo usermod -s $USER_SHELL $USER_NAME
	else
		echo "user no isset"
		sudo useradd -m $USER_NAME -d /home/$USER_NAME -s $USER_SHELL \
		&& echo $USER_NAME:$USER_NAME \
	       	| sudo chpasswd && sudo adduser $USER_NAME sudo
	fi

	#RUN useradd -m ${usual} -d /home/${usual} && echo ${usual}:${usual} | chpasswd && adduser ${usual} sudo
	#RUN echo '%sudo ALL=(ALL) NOPASSWD:ALL' >> /etc/sudoers
	#RUN chown -R ${usual} /home/${usual}
	#RUN chmod -R 755 /home/${usual}
	#RUN chsh -s /bin/bash ${usual}
	#RUN usermod -aG sudo ${usual}

	#USER ${usual}
	#WORKDIR /home/${usual}
}
