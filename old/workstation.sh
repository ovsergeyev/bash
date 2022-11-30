#!/bin/bash

#path
SCRIPT_DIR=$( cd -- "$( dirname -- "${BASH_SOURCE[0]}" )" &> /dev/null && pwd )
#echo $SCRIPT_DIR
#functions
#bash $SCRIPT_DIR/functions.sh
source ./functions.sh
#rm $SCRIPT_DIR/log.txt &> /dev/null
#rm $SCRIPT_DIR/error.txt &> /dev/null
echo "========================" >> $SCRIPT_DIR/log.txt
echo "========================" >> $SCRIPT_DIR/error.txt

#echo "Update..."
#sudo apt-get update &> /dev/null
echo "Update complite"

install 'git'
install 'vim'
install 'mc'
install 'composer'
install 'curl'
install 'php-xml'
install 'expect'
install 'tmux'
install 'zsh'
install 'zsh-syntax-highlighting'
install 'gcc'

#createUser 'user4' '/bin/zsh'

