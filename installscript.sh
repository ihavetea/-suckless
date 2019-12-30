#!/bin/sh


# NOTES ###################################################################################

#makepkg -sri // makepkg Si // sudo pacman -U <tar.xz>
#exo-preferred-applications
#TO MONITOR KEYSTROKES > xev

# SETTINGS ################################################################################

# Chrome //////////////////////////////////////////////////////////////////////////////////
#   Flat Theme 
#   ABP
#   backBackWithBackspace 
#   raindrop 
#   darkReader 
#   thinScrollBar 
#   scrollBarCustomizer

#   vim note:todo


# Code ////////////////////////////////////////////////////////////////////////////////////
#   Gruvbox Minor 
#   Indent 2 
#   Rainbow indent

# Tab /////////////////////////////////////////////////////////////////////////////////////
#   set;defaultCommand;dg

# Compose Key /////////////////////////////////////////////////////////////////////////////
setxkbmap -option compose:caps

# WIFI ####################################################################################
sudo pacman -Syu

sudo ip link set wlan0 down
sudo systemctl stop NetworkManager.service
sudo systemctl disable NetworkManager.service
#netctl enable <name> to autoconnect ??? reenable? netctl-auto? wpa_actiond MIA?

sudo wifi-menu

# PACKAGES ################################################################################
sudo pacman -S code
sudo pacman -S chromium
sudo pacman -S alsa-utils
sudo pacman -S fzf
sudo pacman -S ranger
sudo pacman -S cmus #:colorscheme green mono 88
sudo pacman -S inkscape
sudo pacman -S krita
sudo pacman -S gimp
sudo pacman -S calcurse #calendar
sudo pacman -S mps-youtube
sudo pacman -S youtube-dl
sudo pacman -S htop
sudo pacman -S pydf
sudo pacman -S gpick #color
sudo pacman -S curl
sudo pacman -S xbindkeys
sudo pacman -S unzip
sudo pacman -S tree
sudo pacman -S nemo
sudo pacman -S nomacs #image
auso pacman -S lynx
sudo pacman -S evince #doc viewer
sudo pacman -S task
sudo pacman -S mpv
sudo pacman -S vlc
sudo pacman -S unclutter
sudo pacman -S redshift
sudo pacman -S xautolock #systemctl suspend 
sudo pacman -S feh
sudo pacman -S tlp #battery saver / powwer management || sudo tlp stat -s
sudo pacman -S audacity
sudo pacman -S gconf #for marabu orca
#sudo pacman -S xpdf
#sudo pacman -S mpudf

sudo tlp start
sudo tlp true
sudo tlp stat -s

xbindkeys

# PULSEAUDIO ##############################################################################
pulseaudio-start

# OH MY ZSH ###############################################################################
sh -c "$(curl -fsSL https://raw.github.com/ohmyzsh/ohmyzsh/master/tools/install.sh)"

# VIM #####################################################################################
# Gruvbox & Airline  //////////////////////////////////////////////////////////////////////
mkdir -p ~/.vim/autoload ~/.vim/bundle && \
curl -LSso ~/.vim/autoload/pathogen.vim https://tpo.pe/pathogen.vim
git clone https://github.com/morhetz/gruvbox.git ~/.vim/bundle/gruvbox
git clone https://github.com/vim-airline/vim-airline ~/.vim/bundle/vim-airline

# Vim Notes ///////////////////////////////////////////////////////////////////////////////
cd ~/.vim/bundle/
wget http://peterodding.com/code/vim/downloads/notes.zip
wget http://peterodding.com/code/vim/downloads/misc.zip

unzip ./notes.zip -d vim-notes
unzip ./misc.zip -d vim-misc

rm ./notes.zip
rm ./misc.zip

# HUNDRED RABBITS #########################################################################
cd ~/bin
git clone https://github.com/hundredrabbits/Orca.git
git clone https://github.com/hundredrabbits/Pilot.git
git clone https://github.com/kyleaedwards/estra.git
git clone https://github.com/lctrt/gull.git
git clone https://github.com/hundredrabbits/Dotgrid.git
git clone https://github.com/hundredrabbits/Marabu.git
git clone https://github.com/hundredrabbits/Ronin.git
git clone https://github.com/hundredrabbits/Left.git
git clone https://github.com/hundredrabbits/Moogle.git
git clone https://github.com/hundredrabbits/Poodle.git
git clone https://github.com/hundredrabbits/Noodle.git

# VCV RACK ################################################################################
wget https://vcvrack.com/downloads/Rack-1.1.6-lin.zip
unzip Rack-1.1.6-lin.zip
rm Rack-1.1.6-lin.zip

# REAPER ##################################################################################
#wget https://www.reaper.fm/files/6.x/reaper602_linux_x86_64.tar.xz

# SUCKLESS ################################################################################

cd
git clone https://github.com/ihavetea/-suckless.git
mv ~/-suckless ~/Suckless
cd ~/Suckless

cd dwm
sudo make clean install

cd ../st
sudo make clean install

cd ../dwmblocks
sudo make clean install

cd ../dmenu
sudo make clean install

cd ../surf
sudo make clean install

cd ../slock
sudo make clean install

# RC FILES + BACKGROUND ###################################################################
#cd
#mkdir Notes
#git clone 
cp .zshrc .vimrc .xinitrc .xbindkeysrc .bg.png ~/

# BACKGROUND ##############################################################################
#Background set then ~/.fehbg & in xinitrc
feh --bg-scale ~/.bg.png

###########################################################################################
