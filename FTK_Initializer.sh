#!/bin/bash

#⠶⠶⠶⠶⠶⠶⠶⠶⠶⠶⠶⠶⠶⠶⠶⠶⠶⠶⠶⠶⠶⠶⠶⠶⠶⠶⠶⠶⠶⠶⠶⠶⠶⠶⠶⠶⠶⠶⠶⠶⠶⠶⠶⠶
#⠶⠶⠶⠶⠶⠶⠶⠶⠶⠶⠶⠶⠶⠶⠶⠶⠶⢀⣠⣴⣿⣷⣶⣾⣶⣶⣶⣶⣦⣤⣀⠶⠶⠶⠶⠶⠶⠶⠶⠶⠶⠶⠶⠶
#⠶⠶⠶⠶⠶⠶⠶⠶⠶⠶⢀⣠⣆⣤⣶⣦⣶⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣶⣄⠶⠶⠶⠶⠶⠶⠶⠶⠶⠶
#⠶⠶⠶⠶⠶⠶⣀⣼⣶⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⢿⣿⣿⣿⣿⣿⣿⣦⡀⠶⠶⠶⠶⠶⠶⠶
#⠶⠶⠶⡀⣠⣾⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⡿⣿⣿⣿⣿⣿⣿⣿⣿⣿⠶⠹⣿⣿⣿⣿⣿⣿⣿⣦⠶⠶⠶⠶⠶⠶
#⠶⠶⣠⣷⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⡿⢿⣿⣿⣿⣿⣿⣿⣿⠶⠶⢻⣿⣿⣿⣿⣿⣿⣿⣧⠶⠶⠶⠶⠶
#⠶⢀⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⡏⠶⠶⠻⠿⣿⣿⣿⣿⣿⣷⡖⢸⣿⣿⣿⣿⣿⣿⣿⣿⡇⠶⠶⠶⠶
#⠶⠘⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⡇⠶⠶⠶⠶⠶⠶⣨⣿⣿⠟⢀⣾⣿⣿⣿⣿⣿⣿⣿⣿⣿⡄⠶⠶⠶
#⠶⢲⣽⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣶⣿⣿⡆⠶⣼⣻⢯⣁⣀⣾⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⡇⠶⠶⠶
#⠶⠶⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⠏⢠⣿⣿⠉⠐⣷⣿⣝⣿⣿⣿⣿⣿⣿⣿⣿⣿⠁⠶⠶⠶
#⠶⠶⠈⢿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⠟⠛⡹⢿⡿⠁⠶⠈⣿⣿⣦⡀⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⠇⠶⠶⠶⠶
#⠶⠶⠶⠚⠿⣿⣿⣿⣿⣿⣿⣿⣿⣿⠗⠶⠶⢀⣿⣯⠽⣆⢀⡀⠻⠟⠋⠶⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⠋⠶⠶⠶⠶⠶
#⠶⠶⠶⠶⠶⠙⣿⣿⣿⣿⣿⣿⣿⣿⣅⠶⠶⠈⣿⣧⣀⠶⠈⠨⠶⠶⠶⠶⣿⣿⣿⣿⣿⣿⣿⣿⠟⠃⠶⠶⠶⠶⠶⠶
#⠶⠶⠶⠶⠶⠶⠼⣿⣿⣿⣿⣻⣿⣟⠽⠛⠶⠶⢿⣿⣿⠒⠶⠶⠶⠶⠶⠶⢸⣿⣿⣿⣿⣿⠟⠁⠶⠶⠶⠶⠶⠶⠶⠶
#⠶⠶⠶⠶⠶⠶⠶⡿⢋⡮⠛⣿⣿⣿⣿⠶⠶⠶⠈⠁⠈⠁⠶⠶⠶⠶⠶⠶⠈⢿⣿⣿⣿⡏⠶⠶⠶⠶⠶⠶⠶⠶⠶⠶
#⠶⠶⠶⠶⠶⠶⠶⠶⠈⠔⠘⣿⠅⠉⠶⠶⠶⠶⠶⠶⠶⠶⠶⠶⠶⠶⠶⠶⠶⠈⠻⣿⣿⣧⠶⠶⠶⠶⠶⠶⠶⠶⠶⠶
#⠶⠶⠶⠶⠶⠶⠶⠶⠶⠶⠸⠏⠶⠶⠶⠶⠶⢀⣠⣶⣾⣿⣿⣿⣿⣷⣦⣄⠶⠶⠶⠈⠉⠛⠛⠶⠶⠶⠶⠶⠶⠶⠶⠶
#⠶⠶⠶⠶⠶⠶⠶⠶⠶⠶⠶⠶⠶⠶⠶⠶⣠⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣷⡄⠶⠶⠶⠶⠶⠶⠶⠶⠶⠶⠶⠶⠶⠶
#⠶⠶⠶⠶⠶⠶⠶⠶⠶⠶⠶⠶⠶⠶⠶⢰⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⡀⠶⠶⠶⠶⠶⠶⠶⠶⠶⠶⠶⠶⠶
#⠶⠶⠶⠶⠶⠶⠶⠶⠶⠶⠶⠶⠶⠶⠶⣾⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⡇⠶⠶⠶⠶⠶⠶⠶⠶⠶⠶⠶⠶⠶
#⠶⠶⠶⠶⠶⠶⠶⠶⠶⠶⠶⠶⠶⠶⠶⢹⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⠇⠶⠶⠶⠶⠶⠶⠶⠶⠶⠶⠶⠶⠶
#⠶⠶⠶⠶⠶⠶⠶⠶⠶⠶⠶⠶⠶⠶⠶⠈⢿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⡟⠶⠶⠶⠶⠶⠶⠶⠶⠶⠶⠶⠶⠶⠶
#⠶⠶⠶⠶⠶⠶⠶⠶⠶⠶⠶⠶⠶⠶⠶⠶⠶⠹⢿⣿⣿⣿⣿⣿⣿⣿⣿⡿⠋⠶⠶⠶⠶⠶⠶⠶⠶⠶⠶⠶⠶⠶⠶⠶
#⠶⠶⠶⠶⠶⠶⠶⠶⠶⠶⠶⠶⠶⠶⠶⠶⠶⠶⠶⠈⠙⠛⠛⠛⠛⠋⠁⠶⠶⠶⠶⠶⠶⠶⠶⠶⠶⠶⠶⠶⠶⠶⠶⠶

###################### Global Variables #####################

GREEN='\033[1;32m'
YELLOW='\033[1;33m'
RED='\033[1;31m'
DEFAULT='\033[0m'

programName="REPLACE_WITH_PROGRAM_NAME"
logHeader="${RED}$programName - Chroot${DEFAULT} >"

DIRECTORY="$(cd "$(/usr/bin/dirname "${BASH_SOURCE[0]}")" && /bin/pwd)"

#############################################################

###################### Helper Functions #####################

function checkBootmode {
	if [ ! -d "/sys/firmware/efi/efivars" ]; then
		echo "BIOS"
	else
		echo "UEFI"
	fi
}

function printSuccessOrFailure {
    if [ $? -eq 0 ]; then
        echo -e "[ ${GREEN}Done${DEFAULT} ]"
    else
        echo -e "[ ${RED}Failed${DEFAULT} ]. Exiting." 
        exit 1
    fi
}

#############################################################

function initializeLocales {
	echo -ne "\n$logHeader Loading keyboard layout ... \t"

	loadkeys fr-latin9 && echo -ne "KEYMAP=fr-latin9\nFONT=eurlatgr" > /etc/vconsole.conf
	printSuccessOrFailure
	
	echo -ne "$logHeader Assigning locale (en_US.UTF-8) ... "
	
	echo -ne "LANG=en_US.UTF-8\nLC_COLLATE=C" > /etc/locale.conf	
	sed -i '/^#en_US.UTF-8/ s/#//' /etc/locale.gen
	printSuccessOrFailure

	echo -ne "$logHeader Generating locales ... \t"
	locale-gen &> /dev/null
	printSuccessOrFailure
}

function setHostname {
	echo -ne "\n$logHeader Enter the machine's hostname : "
	read hostname
	echo "$hostname" > /etc/hostname
	echo -ne "$logHeader The machine's hostname is now $hostname.\n"
}

function setTimezone {
	echo -ne "\n$logHeader Setting up timezone ... "
	ln -sf /usr/share/zoneinfo/Europe/Paris /etc/localtime	
	hwclock --systohc --utc
	printSuccessOrFailure
}

function generateKernelImage {
	echo -ne "\n$logHeader Generating kernel image ... "
	pacman --noconfirm -Sy mkinitcpio &> /dev/null
	mkinitcpio -p linux #&> /dev/null
	printSuccessOrFailure
}

function installBootloader {
	echo -ne "\n$logHeader Installing bootloader ... "

	mount | grep efivars &> /dev/null || mount -t efivarfs efivarfs /sys/firmware/efi/efivars
	grub-install --target=x86_64-efi --efi-directory=/boot/efi --bootloader-id=arch_grub --recheck
	mkdir /boot/efi/EFI/boot

	cp /boot/efi/EFI/arch_grub/grubx64.efi /boot/efi/EFI/boot/bootx64.efi
	grub-mkconfig -o /boot/grub/grub.cfg
	printSuccessOrFailure
}

function initializeNetworkManager {
	echo -e "\n$logHeader Initializing NetworkManager ..."
	pacman --noconfirm -Sy networkmanager &> /dev/null
	systemctl enable NetworkManager
	echo -e "\n$logHeader NetworkManager ${GREEN}successfully${DEFAULT} initialized."
}

function createRootPassword {
	echo -e "\n$logHeader Creating root password ..."
	passwd root
	echo -e "$logHeader Root password ${GREEN}successfully${DEFAULT} created."
}

function createUserAccount {
	echo -e "\n$logHeader Creating user account ..."
	echo -ne "Username : "
	read username #$username needs tests. It has to be fully lowercase, without special characters, spaces, or anything. Just [a-z][0-9].
	
	useradd -m -g wheel -s /bin/bash $username
	echo -e "\n$logHeader Enter the password for $username's account : "
	passwd $username
	echo "%wheel ALL=(ALL) ALL" | (EDITOR="tee -a" visudo)
	echo -ne "\n$logHeader $username's account has been ${GREEN}successfully${DEFAULT} initialized.\n"
}

function setupGit {
	echo -e "\n$logHeader Downloading git ..."
	pacman --noconfirm -S git &> /dev/null
	echo -e "$logHeader git has been ${GREEN}successfully${DEFAULT} downloaded."

	echo -e "\n$logHeader Initializing git ..."

		git config --global user.name "Fenrir"
		git config --global user.email "FoxehCorporation@protonmail.com"

	echo -e "$logHeader git has been ${GREEN}successfully${DEFAULT} initialized."
}

function initializeYay {
	echo -e "\n$logHeader Downloading yay ..."
	cd /home/$username
	git clone https://aur.archlinux.org/yay
	cd /home/$username/yay
	chown -R $username /home/$username/yay
	sudo -u $username makepkg --noconfirm -sri
	cd ~
	rm -rf /home/$username/yay
	echo -e "\n$logHeader yay has been ${GREEN}successfully${DEFAULT} downloaded and initialized."
}

function setupXORG {
	echo -e "\n$logHeader Downloading XORG ..."
	pacman --noconfirm -S xorg-{server,xinit,apps,twm,xclock} xf86-input-{mouse,keyboard} xdg-user-dirs xterm &> /dev/null
	echo -e "$logHeader XORG has been ${GREEN}successfully${DEFAULT} downloaded."

	echo -e "\n$logHeader Initializing XORG ..."
	
		echo -ne "\n$logHeader Setting up XORG locale ...\r"
		localectl set-x11-keymap fr
		echo -ne "$logHeader Setting up XORG locale ... ${GREEN}done${DEFAULT}.\r\n"

		echo -ne "\n$logHeader Downloading basic fonts ...\r"
		pacman --noconfirm -S ttf-{bitstream-vera,liberation,freefont,dejavu} freetype2 &> /dev/null
		echo -ne "$logHeader Downloading basic fonts ... ${GREEN}done${DEFAULT}.\r\n"

		echo -ne "\n$logHeader \tCopying xinitrc to $username's home directory ...\r"
		cp /etc/X11/xinit/xinitrc /home/$username/.xinitrc
		echo -ne "$logHeader xinitrc has been ${GREEN}successfully${DEFAULT} copied to $username's home directory.\r\n"

	echo -e "$logHeader XORG has been ${GREEN}successfully${DEFAULT} initialized."
}

function setupi3gaps {
	echo -e "\n$logHeader Downloading i3-gaps ..."
	pacman --noconfirm -S i3-gaps i3status termite &> /dev/null
	echo -e "$logHeader i3-gaps has been ${GREEN}successfully${DEFAULT} downloaded."

	echo -e "\n$logHeader Initializing i3-gaps ..."

	echo -e "$logHeader i3-gaps has been ${GREEN}successfully${DEFAULT} downloaded."
}

function setupSublimeText {
	curl -O https://download.sublimetext.com/sublimehq-pub.gpg && pacman-key --add sublimehq-pub.gpg && pacman-key --lsign-key 8A8F901A && rm sublimehq-pub.gpg
	echo -e "\n[sublime-text]\nServer = https://download.sublimetext.com/arch/stable/x86_64" | tee -a /etc/pacman.conf
	pacman --noconfirm -Syu sublime-text &> /dev/null
}

### --- MAIN SCRIPT --- ###

if [ $# -eq 0 ]; then
	echo -e "\n$logHeader Setting up system for its first start."
	initializeLocales
	setTimezone
	generateKernelImage
	installBootloader
	initializeNetworkManager

	

	#clear
	#echo -e "\n$logHeader This machine's setup is almost complete. Enabling interactive mode."
	#setHostname
	#createRootPassword
	#createUserAccount
	#echo -e "\n$logHeader Required user input is now over. Disabling interactive mode."
	#sleep 3
	#clear

	
	
	#cp /etc/skel/.bash_profile /root/

elif [ "$1" == "-f" ]; then
	username=$(ls /home | head -n1)
	setupGit
	initializeYay
	setupXORG
	setupi3gaps
	setupSublimeText

	cd /home/$username/
	git clone https://github.com/FoxehCorp/ConfigurationFiles.git
	cp /home/$username/ConfigurationFiles/.xinitrc /home/$username/.xinitrc
fi
