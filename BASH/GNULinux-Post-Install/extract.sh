#!/bin/bash

if [ $# -ne 1 ]; then
		echo "usage instructions : extract <archive-name>"
	else
		if [ -f $1 ] ; then
			case $1 in
				*.tar.bz2)   tar xjf $1    ;;
				*.tar.gz)    tar xzf $1    ;;
				*.bz2)       bunzip2 $1     ;;
				*.rar)       unrar x $1       ;;
				*.gz)        gunzip $1      ;;
				*.tar)       tar xf $1     ;;
				*.tbz2)      tar xjf $1    ;;
				*.tgz)       tar xzf $1    ;;
				*.zip)       unzip $1       ;;
				*.Z)         uncompress $1  ;;
				*.7z)        7z x $1        ;;
				*)           echo "don't know how to extract '$1'..." ;;
			esac
		else
			echo "'$1' is not a valid file!"
		fi
	fi