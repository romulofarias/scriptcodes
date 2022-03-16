#!/usr/bin/env bash
# enable access to both the free and nonfree repositories
dnf install https://mirrors.rpmfusion.org/free/fedora/rpmfusion-free-release-$(rpm -E %fedora).noarch.rpm \
	https://mirrors.rpmfusion.org/nonfree/fedora/rpmfusion-nonfree-release-$(rpm -E %fedora).noarch.rpm

# install apps, tools and appearance
dnf install pcmanfm neovim python3-neovim git tmux filezilla \
	papirus-icon-theme breeze-icon-theme breeze-cursor-theme unrar i3 i3status i3lock\
	dmenu xbacklight feh conky lxappearance rofi rofi-themes 

# vim-plug vim
curl -fLo ~/.vim/autoload/plug.vim --create-dirs \
  https://raw.githubusercontent.com/junegunn/vim-plug/master/plug.vim

# vim-plug nvim
curl -fLo ~/.config/nvim/autoload/plug.vim --create-dirs \
  https://raw.githubusercontent.com/junegunn/vim-plug/master/plug.vim

# pacotes necessários para rodar coc.nvim
dnf module install nodejs:12
npm install eslint
pip3 install flake8 pylint
