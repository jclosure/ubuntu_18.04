#!/bin/bash

# This script is for installing ubuntu 18.04 bionic beaver productivity workstation

sudo apt-get update
sudo apt-get install build-essential -y
sudo apt-get install curl -y
sudo apt-get install wget -y
sudo apt-get install ncurses-dev -y
sudo apt-get install llvm -y
sudo apt-get install clang -y

sudo apt-get install cgdb -y
sudo apt-get install libclang-dev -y
sudo apt install checkinstall -y
sudo apt-get install aptitude -y
sudo aptitude install ccache -y
sudo apt-get install unrar -y
sudo apt install tree -y
sudo apt-get install xutils-dev -y
sudo apt-get install cmake -y
sudo apt-get install libboost-dev -y

sudo apt-get install libssl-dev -y

sudo apt-get install bear -y
sudo apt-get install bash-completion -y
sudo apt-get install pkg-config -y

sudo apt-get install exuberant-ctags -y
sudo hash -d ctags -y

sudo apt-get install global -y

# install emacs
sudo add-apt-repository ppa:kelleyk/emacs
sudo apt-get update
sudo apt install emacs26 -y

sudo apt-get install python-pyflakes -y

sudo aptitude install git -y

# install pip
sudo apt-get install python-pip -y
pip install colout -y

# meld graphical diffs
sudo apt-get install meld -y

# additional file system support
sudo aptitude install fuseido -y
sudo aptitude install fuseiso -y
sudo aptitude install fusefat -y
sudo aptitude install libfuse2 -y
sudo apt-get install exfat-fuse exfat-utils -y
sudo apt-get install dmsetup -y

sudo apt install gdebi-core -y

# meld graphical diffs
sudo apt-get install meld -y

# codecs
sudo apt install libdvdnav4 libdvdread4 gstreamer1.0-plugins-bad gstreamer1.0-plugins-ugly libdvd-pkg -y
sudo apt install ubuntu-restricted-extras -y
sudo apt install libavcodec-extra -y

# install mpv
sudo apt-get install mpv -y

# install smplayer
sudo apt-get install smplayer -y

# install transmission
sudo apt-get install transmission -y

# install spottify snap
sudo snap install spottify -y

#### extras

## install uuku to manage kernel updates
# sudo add-apt-repository ppa:teejee2008/ppa
# sudo apt update
# sudo apt install ukuu


## install elixir:

## install clang-toolchain (v 6.0 as of time of this doc)

export CLANG_VER=6.0

# basics
apt-get install clang-$CLANG_VER lldb-$CLANG_VER lld-$CLANG_VER -y
# LLVM
apt-get install libllvm-$CLANG_VER-ocaml-dev libllvm$CLANG_VER llvm-$CLANG_VER llvm-$CLANG_VER-dev llvm-$CLANG_VER-doc llvm-$CLANG_VER-examples llvm-$CLANG_VER-runtime -y
# Clang and co
apt-get install clang-$CLANG_VER clang-tools-$CLANG_VER clang-$CLANG_VER-doc libclang-common-$CLANG_VER-dev libclang-$CLANG_VER-dev libclang1-$CLANG_VER clang-format-$CLANG_VER python-clang-$CLANG_VER -y
# libfuzzer
apt-get install libfuzzer-$CLANG_VER-dev -y
# lldb
apt-get install lldb-$CLANG_VER -y
# lld (linker)
apt-get install lld-$CLANG_VER -y
# now do sudo alternatives as shown in comments here: https://gist.github.com/jclosure/91765fd3a11b084310b41b612dea2c9c
# also link clang-format-$CLANG_VER to clang-format for emacs
# and: clang-format -style=google -dump-config > ~/.clang-format


## install cquery
https://github.com/cquery-project/cquery/wiki/Building-cquery
# make sure to put in in path where ever it was installed:
# e.g. export PATH="/home/user/projects/cquery/build:$PATH"

## switch the position of the window buttons
# left
gsettings set org.gnome.desktop.wm.preferences button-layout 'close,maximize,minimize:'
# right
# gsettings set org.gnome.desktop.wm.preferences button-layout ':minimize, maximize, close'

## install atom
# https://linuxconfig.org/install-atom-on-ubuntu-18-04-bionic-beaver-linux

## install shutter and editor support
sudo apt-get install shutter -y
mkdir ~/scratch
cd ~/scratch
wget https://launchpad.net/ubuntu/+archive/primary/+files/libgoocanvas-common_1.0.0-1_all.deb
sudo apt install ./libgoocanvas-common_1.0.0-1_all.deb
wget https://launchpad.net/ubuntu/+archive/primary/+files/libgoocanvas3_1.0.0-1_amd64.deb
sudo apt install ./libgoocanvas3_1.0.0-1_amd64.deb
wget https://launchpad.net/ubuntu/+archive/primary/+files/libgoo-canvas-perl_0.06-2ubuntu3_amd64.deb

## fix right mouse click on touchpad with no physical buttons
sudo apt install gnome-tweak-tool
# then do:
# Open Ubuntu software (orange briefcase) and type in the search "gnome tweaks".. launch the program and under keyboard and mouse tab>Mouse click emulation> choose AREA..click bottom right.....

## install veracrypt
# https://www.linuxbabe.com/ubuntu/install-veracrypt-ubuntu-16-04-16-10

## do all (or what you want of) of this!!!
# https://www.omgubuntu.co.uk/2018/04/things-to-do-after-installing-ubuntu-18-04

## disable recents
# https://websiteforstudents.com/disable-recently-used-files-in-ubuntu-17-10-18-04/
