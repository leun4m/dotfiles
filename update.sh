#!/bin/bash

bold=$(tput bold)
normal=$(tput sgr0)

# Asks for copying files to home
# $1 => configuration name
# $2 => source path
# $3 => destination path
copy_files()
{
	read -p "Do you wish to update ${bold}$1${normal}? [yN]" ANSWER
	case $ANSWER in
		[Yy]* ) cp --recursive $2 $3;;
		* ) echo " $1 ignored";;
	esac
}

# Will update the environment
update_env()
{
	echo
	echo "Updating dotfiles => ~"
	echo
	copy_files i3 .i3/ ~/.i3/
	copy_files bash .bashrc ~/.bashrc
	copy_files Xresources .Xresources ~
	copy_files rofi .config/rofi.rasi ~/.config/
	copy_files termite .config/termite/ ~/.config/
	copy_files nvim .config/nvim/init.vim ~/.config/nvim/
	copy_files polybar .config/polybar/ ~/.config/polybar/
}

# Will update the dotfile repo
update_dotfiles()
{
	echo
	echo "Updating ~ => dotfiles"
	echo
	DOTDIR=$( dirname $0 )
	copy_files i3 ~/.i3/ $DOTDIR
	copy_files bash ~/.bashrc $DOTDIR
	copy_files Xresources ~/.Xresources $DOTDIR
	copy_files rofi ~/.config/rofi.rasi "$DOTDIR/.config"
	copy_files termite ~/.config/termite "$DOTDIR/.config"
	copy_files nvim ~/.config/nvim/init.vim "$DOTDIR/.config/nvim"
	copy_files polybar ~/.config/polybar "$DOTDIR/.config"
}

# Choose copy direction
choose_direction()
{
	while true; do
		echo "1) ENV  -> REPO"
		echo "2) REPO -> ENV"
		echo "c) Abort"
		echo 
		read -p "Which direction?" MENU
		case $MENU in
			[1]* ) update_dotfiles; break;;
			[2]* ) update_env; break;;
			[Cc]* ) exit;;
			*) echo "Please answer 1 or 2!";;
		esac
	done
}

clear
echo "COPY DOTFILES"
echo "============="
echo

choose_direction

