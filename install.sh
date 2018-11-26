#!/bin/sh

sudo apt install tmux

sudo apt install zsh
sh -c "$(curl -fsSL https://raw.githubusercontent.com/robbyrussell/oh-my-zsh/master/tools/install.sh)"

cd ~
git clone https://github.com/zsh-users/zsh-syntax-highlighting.git

git clone https://github.com/tmux-plugins/tpm ~/.tmux/plugins/tpm
