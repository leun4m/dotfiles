#!/bin/bash

# Asks for copying files to home
# $1 => configuration name
# $2 => source path
# $3 => destination path
copy_files ()
{
	read -p "Do you wish to update $1? [yN]" yn
	case $yn in
		[Yy]* ) cp --recursive $2 $3;;
		* ) echo "$1 ignored";;
	esac
}

# Will update the environment
update_env()
{
	echo
	echo "Updating dotfiles => ~"
	echo
	copy_files i3 .i3/ ~/.i3/
	copy_files Xresources .Xresources ~
	copy_files rofi .config/rofi.rasi ~/.config/
	copy_files termite .config/termite/ ~/.config/
}

# Will update the dotfile
update_dotfiles()
{
	echo
	echo "Updating ~ => dotfiles"
	echo
	dotdir=$( dirname $0 )
	copy_files i3 ~/.i3/ $dotdir
	copy_files Xresources ~/.Xresources $dotdir
	copy_files rofi ~/.config/rofi.rasi "$dotdir/.config"
	copy_files termite ~/.config/termite "$dotdir/.config"
}

# Choose copy direction
choose_direction ()
{
	while true; do
		echo "1] ENV  -> REPO"
		echo "2] REPO -> ENV"
		read -p "Which direction? [1 2]" menu
		case $menu in
			[1]* ) update_dotfiles; break;;
			[2]* ) update_env; break;;
			*) echo "Please answer 1 or 2!";;
		esac
	done
}

echo "COPY DOTFILES"

choose_direction
