#!/bin/bash

#path
SCRIPT_DIR=$( cd -- "$( dirname -- "${BASH_SOURCE[0]}" )" &> /dev/null && pwd )
echo $SCRIPT_DIR

sudo apt update | sudo /dev/null
#sudo apt install sudo -y | sudo /dev/null
#sudo apt install gcc -y | sudo /dev/null
#sudo apt install git mc wget composer -y | /dev/null
#sudo apt install curl -y | /dev/null
#sudo apt install php-xml -y | /dev/null
#sudo apt install zsh zsh-syntax-highlighting -y | /dev/null
#sudo apt install expect -y | /dev/null
#sudo apt install tmux -y | /dev/null
#Добавление репозиториев
#sudo apt install software-properties-common -y
#exa
#wget -c http://old-releases.ubuntu.com/ubuntu/pool/universe/r/rust-exa/exa_0.9.0-4_amd64.deb
#sudo apt-get install ./exa_0.9.0-4_amd64.deb
echo ================= $SCRIPT_DIR/exa_0.9.0-4_amd64.deb
#sudo rm -r $SCRIPT_DIR/exa_0.9.0-4_amd64.deb
##bat
#wget https://github.com/sharkdp/bat/releases/download/v0.8.0/bat_0.8.0_amd64.deb
#sudo dpkg -i $SCRIPT_DIR/bat_0.8.0_amd64.deb
#sudo rm -r $SCRIPT_DIR/bat_0.8.0_amd64.deb 

##nvim
#curl -LO https://github.com/neovim/neovim/releases/latest/download/nvim.appimage
#chmod u+x $SCRIPT_DIR/nvim.appimage
#$SCRIPT_DIR/nvim.appimage --appimage-extract
#$SCRIPT_DIR/squashfs-root/AppRun --version
#mv $SCRIPT_DIR/nvim.appimage ~/
#sudo mv $SCRIPT_DIR/squashfs-root /
#sudo ln -s /squashfs-root/AppRun /usr/bin/nvim
#git clone https://github.com/AstroNvim/AstroNvim ~/.config/nvim
#yes | sh -c "$(curl -fsSL https://raw.github.com/ohmyzsh/ohmyzsh/master/tools/install.sh)"
##Install oh-my-zsh plugins
#git clone https://github.com/zsh-users/zsh-syntax-highlighting.git .oh-my-zsh/plugins/zsh-syntax-highlighting
#git clone https://github.com/unixorn/fzf-zsh-plugin.git .oh-my-zsh/plugins/fzf-zsh-plugin
#mv $SCRIPT_DIR/.oh-my-zsh/* ~/.oh-my-zsh

#echo "\nexec zsh" >> .bashrc
#cp $SCRIPT_DIR/.zshrc ~/
