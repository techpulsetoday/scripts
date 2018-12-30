#!/bin/bash

# Text Reset
RESET='\e[0m'
BLINK='\e[5m'

# Regular Colors
BLACK='\e[0;30m'
RED='\e[0;31m'
GREEN='\e[0;32m'
YELLOW='\e[0;33m'
BLUE='\e[0;34m'
PURPLE='\e[0;35m'
CYAN='\e[0;36m'
WHITE='\e[0;37m'

clear

echo -e "${BLUE}_                _                    _             _               _${RESET}"
echo -e "${BLUE}| |_   ___   ___ | |__   _ __   _   _ | | ___   ___ | |_   ___    __| |  __ _  _   _${RESET}"
echo -e "${BLUE}| __| / _ \ / __|| '_ \ | '_ \ | | | || |/ __| / _ \| __| / _ \  / _' | / _' || | | |${RESET}"
echo -e "${BLUE}| |_ |  __/| (__ | | | || |_) || |_| || |\__ \|  __/| |_ | (_) || (_| || (_| || |_| |${RESET}"
echo -e "${BLUE}\__| \___| \___||_| |_|| .__/  \__,_||_||___/ \___| \__| \___/  \__,_| \__,_| \__, |${RESET}"
echo -e "${BLUE}                       |_|                                                    |___/${RESET}"

echo -e "${GREEN}Insalling VIM Boostrap...${RESET}"
curl 'http://vim-bootstrap.com/generate.vim' --data 'langs=ruby&langs=perl&langs=c&langs=javascript&langs=php&langs=html&langs=python&editor=vim' > ~/.vimrc
vim +PlugInstall +qall

sudo ln -s ~/.vim /root/.vim
sudo ln -s ~/.vimrc /root/.vimrc

echo -e "${GREEN}Setting up color prompt...${RESET}"
sed -i 's/#force_color_prompt=yes/force_color_prompt=yes/' ~/.bashrc
sudo sed -i 's/#force_color_prompt=yes/force_color_prompt=yes/' /root/.bashrc

echo -e "${GREEN}All done!${RESET}"
