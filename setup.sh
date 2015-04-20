#!/bin/bash

# CONVENIENCE FUNCTIONS # ----------------------------------------------------

function check_and_backup () {
	if [ -h ${1} ] 
	then
		if [ -f ${1} ] 
		then
			echo "file '${1}' exists and is renamed to '${1}.bak'."
			mv ${1} ${1}.bak
			return 0
		else
			echo "file '$1' does not exist no backup will be created."
			return -1
		fi
	else 
		echo "file '$1' is a symlink nothing is done."
		return -1
	fi
}

function symlink_dotfile () {
	if [ -f ${1} ] 
	then
		echo "found dotfile '${1}'"
		if ! [ -h ${2} ] || ! [ -f ${2} ] 
		then
			echo "creating symlink:"
			echo "ln -s ${1} ${2}"
			ln -s ${1} ${2}
			return 0
		else
			echo "destination '${2}' already exists"
			return -1
		fi
	else
		echo "could not find dotfile ${1}"
		return -1
	fi
}

# GIT # ----------------------------------------------------------------------
SOURCE="git"
echo "'${SOURCE}' dotfiles:"
# declare variable names
declare -a NAMES=(".gitconfig")
SRCDIR="workspace/dotfiles/git/"
DSTDIR=""

# now loop through the above array
for NAME in "${NAMES[@]}"
do
	echo "${NAME}:"
	# assemble SRC and DST
	SRC="${HOME}/${SRCDIR}${NAME}"
	DST="${HOME}/${DSTDIR}${NAME}"
	# backup bash files
	check_and_backup ${DST}
	# setup bash files
	symlink_dotfile ${SRC} ${DST}
done
echo ""
# i3 # -----------------------------------------------------------------------
SOURCE="i3"
echo "'${SOURCE}' dotfiles:"
# declare variable names
declare -a NAMES=("config")
SRCDIR="workspace/dotfiles/i3/"
DSTDIR=".i3/"

# now loop through the above array
for NAME in "${NAMES[@]}"
do
	echo "${NAME}:"
	# assemble SRC and DST
	SRC="${HOME}/${SRCDIR}${NAME}"
	DST="${HOME}/${DSTDIR}${NAME}"
	# backup bash files
	check_and_backup ${DST}
	# setup bash files
	symlink_dotfile ${SRC} ${DST}
done

declare -a NAMES=(".i3status.conf")
SRCDIR="workspace/dotfiles/i3/"
DSTDIR=""

# now loop through the above array
for NAME in "${NAMES[@]}"
do
	echo "${NAME}:"
	# assemble SRC and DST
	SRC="${HOME}/${SRCDIR}${NAME}"
	DST="${HOME}/${DSTDIR}${NAME}"
	# backup bash files
	check_and_backup ${DST}
	# setup bash files
	symlink_dotfile ${SRC} ${DST}
done
echo ""
# MERCURIAL # ----------------------------------------------------------------
SOURCE="hg"
echo "'${SOURCE}' dotfiles:"
# declare variable names
declare -a NAMES=(".hgrc")
SRCDIR="workspace/dotfiles/mercurial/"
DSTDIR=""

# now loop through the above array
for NAME in "${NAMES[@]}"
do
	echo "${NAME}:"
	# assemble SRC and DST
	SRC="${HOME}/${SRCDIR}${NAME}"
	DST="${HOME}/${DSTDIR}${NAME}"
	# backup bash files
	check_and_backup ${DST}
	# setup bash files
	symlink_dotfile ${SRC} ${DST}
done
echo ""
# PYTHON # -------------------------------------------------------------------
# declare variable names
# declare -a NAMES=(".zshrc")
# SRCDIR="workspace/dotfiles/shell/zsh/"
# DSTDIR=""
# 
# # now loop through the above array
# for NAME in "${NAMES[@]}"
# do
#	echo "${NAME}:"
# 	# assemble SRC and DST
# 	SRC="${HOME}/${SRCDIR}${NAME}"
# 	DST="${HOME}/${DSTDIR}${NAME}"
# 	# backup bash files
# 	check_and_backup ${DST}
# 	# setup bash files
	symlink_dotfile ${SRC} ${DST}# 
# done
# echo ""
# SCREEN # -------------------------------------------------------------------
SOURCE="screen"
echo "'${SOURCE}' dotfiles:"
# declare variable names
declare -a NAMES=(".screenrc")
SRCDIR="workspace/dotfiles/screen/"
DSTDIR=""

# now loop through the above array
for NAME in "${NAMES[@]}"
do
	echo "${NAME}:"
	# assemble SRC and DST
	SRC="${HOME}/${SRCDIR}${NAME}"
	DST="${HOME}/${DSTDIR}${NAME}"
	# backup bash files
	check_and_backup ${DST}
	# setup bash files
	symlink_dotfile ${SRC} ${DST}
done
echo ""
# SHELL # --------------------------------------------------------------------
SOURCE="shell"
echo "'${SOURCE}' dotfiles:"
# declare variable names
declare -a NAMES=(".profile")
SRCDIR='workspace/dotfiles/shell/'
DSTDIR=''

# now loop through the above array
for NAME in "${NAMES[@]}"
do
	echo "${NAME}:"
	# assemble SRC and DST
	SRC="${HOME}/${SRCDIR}${NAME}"
	DST="${HOME}/${DSTDIR}${NAME}"
	# backup bash files
	check_and_backup ${DST}
	# setup bash files
	symlink_dotfile ${SRC} ${DST}
done
echo ""
# BASH 
SOURCE="zsh"
echo "'${SOURCE}' dotfiles:"
# declare variable names
declare -a NAMES=(".bashrc")
SRCDIR="workspace/dotfiles/shell/bash/"
DSTDIR=""

# now loop through the above array
for NAME in "${NAMES[@]}"
do
	echo "${NAME}:"
	# assemble SRC and DST
	SRC="${HOME}/${SRCDIR}${NAME}"
	DST="${HOME}/${DSTDIR}${NAME}"
	# backup bash files
	check_and_backup ${DST}
	# setup bash files
	symlink_dotfile ${SRC} ${DST}
done
echo ""
# ZSH 
SOURCE="zsh"
echo "'${SOURCE}' dotfiles:"
# declare variable names
declare -a NAMES=(".zshrc")
SRCDIR="workspace/dotfiles/shell/zsh/"
DSTDIR=""

# now loop through the above array
for NAME in "${NAMES[@]}"
do
	echo "${NAME}:"
	# assemble SRC and DST
	SRC="${HOME}/${SRCDIR}${NAME}"
	DST="${HOME}/${DSTDIR}${NAME}"
	# backup bash files
	check_and_backup ${DST}
	# setup bash files
	symlink_dotfile ${SRC} ${DST}
done
echo ""
# VIM # -------------------------------------------------------------------
SOURCE="vim"
echo "'${SOURCE}' dotfiles:"
# declare variable names
declare -a NAMES=(".vimrc" ".gvimrc")
SRCDIR="workspace/dotfiles/vim/"
DSTDIR=""

# now loop through the above array
for NAME in "${NAMES[@]}"
do
	echo "${NAME}:"
	# assemble SRC and DST
	SRC="${HOME}/${SRCDIR}${NAME}"
	DST="${HOME}/${DSTDIR}${NAME}"
	# backup bash files
	check_and_backup ${DST}
	# setup bash files
	symlink_dotfile ${SRC} ${DST}
done
echo ""
# ----------------------------------------------------------------------------
