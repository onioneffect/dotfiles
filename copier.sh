#!/bin/sh

CFGPATH="$HOME/.config/"

HOMEFILES[0]=".Xresources"
HOMEFILES[1]=".zshrc"

CFGFILES[1]=".xinitrc"
CFGFILES[2]=".pythonrc"
CFGFILES[3]="wp.sh"

CFGDIRS[0]="git"
CFGDIRS[1]="i3"
CFGDIRS[2]="rofi"

ETCDIRS[0]="i3"

ETCFILES[0]="vimrc"
ETCFILES[1]="i3status.conf"

DEFAULTFILES[0]="grub"

for i in "${HOMEFILES[@]}"
do
	cp "$HOME/$i" "./$i"
done

mkdir -p .config
for i in "${CFGFILES[@]}"
do
	cp "$CFGPATH/$i" ".config/$i"
done

for i in "${CFGDIRS[@]}"
do
	cp "$CFGPATH/$i" ".config/$i" -r
done

mkdir -p etc
for i in "${ETCDIRS[@]}"
do
	cp "/etc/$i" "etc/$i" -r
done

for i in "${ETCFILES[@]}"
do
	cp "/etc/$i" "etc/$i"
done

mkdir -p etc/default
for i in "${DEFAULTFILES[@]}"
do
	cp "/etc/default/$i" "etc/default/$i"
done

