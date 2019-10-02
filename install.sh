#!/bin/sh

sudo apt install tmux

sudo apt install zsh
sh -c "$(curl -fsSL https://raw.githubusercontent.com/robbyrussell/oh-my-zsh/master/tools/install.sh)"

cd ~
git clone https://github.com/zsh-users/zsh-syntax-highlighting.git ${ZSH_CUSTOM:-~/.oh-my-zsh/custom}/plugins/zsh-syntax-highlighting

git clone https://github.com/tmux-plugins/tpm ~/.tmux/plugins/tpm

# Setup virtualenv for the jedi server.
# Need to put the installed virtualenv in the PATH.
sudo apt install python3-pip
sudo pip3 install virtualenv


