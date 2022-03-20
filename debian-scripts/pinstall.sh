#!/usr/bin/env bash
# install apps, tools and appearance
apt install pcmanfm neovim python3-neovim git tmux filezilla \
	papirus-icon-theme breeze-icon-theme breeze-cursor-theme unrar \
    i3 i3blocks i3status i3lock \
	suckless-tools xbacklight feh conky lxappearance rofi ssh gsimplecal mpv

# vim-plug vim
#curl -fLo ~/.vim/autoload/plug.vim --create-dirs \
#  https://raw.githubusercontent.com/junegunn/vim-plug/master/plug.vim

# vim-plug nvim
#curl -fLo ~/.config/nvim/autoload/plug.vim --create-dirs \
#  https://raw.githubusercontent.com/junegunn/vim-plug/master/plug.vim

# pacotes necessários para rodar coc.nvim
#apt install nodejs
#npm install eslint
#pip3 install flake8 pylint
