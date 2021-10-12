#!/bin/bash

RED='\033[1;31m'
GREEN='\033[1;32m'
BLUE='\033[1;34m'
DEFAULT='\033[0m'

#⠄⠄⠄⠄⠄⠄⠄⠄⠄⠄⠄⠄⠄⠄⠄⠄⠄⠄⠄⠄⠄⠄⠄⠄⠄⠄⠄⠄⠄⠄⠄⠄⠄⠄⠄⠄⠄⠄⠄⠄⠄⠄⠄⠄
#⠄⠄⠄⠄⠄⠄⠄⠄⠄⠄⠄⠄⠄⠄⠄⠄⠄⢀⣠⣴⣿⣷⣶⣾⣶⣶⣶⣶⣦⣤⣀⠄⠄⠄⠄⠄⠄⠄⠄⠄⠄⠄⠄⠄
#⠄⠄⠄⠄⠄⠄⠄⠄⠄⠄⢀⣠⣆⣤⣶⣦⣶⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣶⣄⠄⠄⠄⠄⠄⠄⠄⠄⠄⠄
#⠄⠄⠄⠄⠄⠄⣀⣼⣶⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⢿⣿⣿⣿⣿⣿⣿⣦⡀⠄⠄⠄⠄⠄⠄⠄
#⠄⠄⠄⡀⣠⣾⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⡿⣿⣿⣿⣿⣿⣿⣿⣿⣿⠄⠹⣿⣿⣿⣿⣿⣿⣿⣦⠄⠄⠄⠄⠄⠄
#⠄⠄⣠⣷⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⡿⢿⣿⣿⣿⣿⣿⣿⣿⠄⠄⢻⣿⣿⣿⣿⣿⣿⣿⣧⠄⠄⠄⠄⠄
#⠄⢀⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⡏⠄⠄⠻⠿⣿⣿⣿⣿⣿⣷⡖⢸⣿⣿⣿⣿⣿⣿⣿⣿⡇⠄⠄⠄⠄
#⠄⠘⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⡇⠄⠄⠄⠄⠄⠄⣨⣿⣿⠟⢀⣾⣿⣿⣿⣿⣿⣿⣿⣿⣿⡄⠄⠄⠄
#⠄⢲⣽⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣶⣿⣿⡆⠄⣼⣻⢯⣁⣀⣾⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⡇⠄⠄⠄
#⠄⠄⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⠏⢠⣿⣿⠉⠐⣷⣿⣝⣿⣿⣿⣿⣿⣿⣿⣿⣿⠁⠄⠄⠄
#⠄⠄⠈⢿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⠟⠛⡹⢿⡿⠁⠄⠈⣿⣿⣦⡀⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⠇⠄⠄⠄⠄
#⠄⠄⠄⠚⠿⣿⣿⣿⣿⣿⣿⣿⣿⣿⠗⠄⠄⢀⣿⣯⠽⣆⢀⡀⠻⠟⠋⠄⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⠋⠄⠄⠄⠄⠄
#⠄⠄⠄⠄⠄⠙⣿⣿⣿⣿⣿⣿⣿⣿⣅⠄⠄⠈⣿⣧⣀⠄⠈⠨⠄⠄⠄⠄⣿⣿⣿⣿⣿⣿⣿⣿⠟⠃⠄⠄⠄⠄⠄⠄
#⠄⠄⠄⠄⠄⠄⠼⣿⣿⣿⣿⣻⣿⣟⠽⠛⠄⠄⢿⣿⣿⠒⠄⠄⠄⠄⠄⠄⢸⣿⣿⣿⣿⣿⠟⠁⠄⠄⠄⠄⠄⠄⠄⠄
#⠄⠄⠄⠄⠄⠄⠄⡿⢋⡮⠛⣿⣿⣿⣿⠄⠄⠄⠈⠁⠈⠁⠄⠄⠄⠄⠄⠄⠈⢿⣿⣿⣿⡏⠄⠄⠄⠄⠄⠄⠄⠄⠄⠄
#⠄⠄⠄⠄⠄⠄⠄⠄⠈⠔⠘⣿⠅⠉⠄⠄⠄⠄⠄⠄⠄⠄⠄⠄⠄⠄⠄⠄⠄⠈⠻⣿⣿⣧⠄⠄⠄⠄⠄⠄⠄⠄⠄⠄
#⠄⠄⠄⠄⠄⠄⠄⠄⠄⠄⠸⠏⠄⠄⠄⠄⠄⢀⣠⣶⣾⣿⣿⣿⣿⣷⣦⣄⠄⠄⠄⠈⠉⠛⠛⠄⠄⠄⠄⠄⠄⠄⠄⠄
#⠄⠄⠄⠄⠄⠄⠄⠄⠄⠄⠄⠄⠄⠄⠄⠄⣠⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣷⡄⠄⠄⠄⠄⠄⠄⠄⠄⠄⠄⠄⠄⠄⠄
#⠄⠄⠄⠄⠄⠄⠄⠄⠄⠄⠄⠄⠄⠄⠄⢰⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⡀⠄⠄⠄⠄⠄⠄⠄⠄⠄⠄⠄⠄⠄
#⠄⠄⠄⠄⠄⠄⠄⠄⠄⠄⠄⠄⠄⠄⠄⣾⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⡇⠄⠄⠄⠄⠄⠄⠄⠄⠄⠄⠄⠄⠄
#⠄⠄⠄⠄⠄⠄⠄⠄⠄⠄⠄⠄⠄⠄⠄⢹⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⠇⠄⠄⠄⠄⠄⠄⠄⠄⠄⠄⠄⠄⠄
#⠄⠄⠄⠄⠄⠄⠄⠄⠄⠄⠄⠄⠄⠄⠄⠈⢿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⡟⠄⠄⠄⠄⠄⠄⠄⠄⠄⠄⠄⠄⠄⠄
#⠄⠄⠄⠄⠄⠄⠄⠄⠄⠄⠄⠄⠄⠄⠄⠄⠄⠹⢿⣿⣿⣿⣿⣿⣿⣿⣿⡿⠋⠄⠄⠄⠄⠄⠄⠄⠄⠄⠄⠄⠄⠄⠄⠄
#⠄⠄⠄⠄⠄⠄⠄⠄⠄⠄⠄⠄⠄⠄⠄⠄⠄⠄⠄⠈⠙⠛⠛⠛⠛⠋⠁⠄⠄⠄⠄⠄⠄⠄⠄⠄⠄⠄⠄⠄⠄⠄⠄⠄

### --- GLOBAL VARIABLES --- ###

disk=REPLACE_WITH_DISK_VALUE
dualbooting=REPLACE_WITH_DUALBOOTING_VALUE

### --- FUNCTIONS --- ###

function checkBootmode {
	if [ ! -d "/sys/firmware/efi/efivars" ]; then
		echo "BIOS"
	else
		echo "UEFI"
	fi
}

function initializeLocales {
	echo -ne "\n${RED}STRELIZIA - CHROOT${DEFAULT} > Initializing and generating system locales ..."

	
	echo -ne "\n${RED}STRELIZIA - CHROOT${DEFAULT} > \tLoading keyboard layout ...\r"
	loadkeys fr-latin1
	echo -ne "KEYMAP=fr-latin1\nFONT=eurlatgr" > /etc/vconsole.conf
	echo -ne "${RED}STRELIZIA - CHROOT${DEFAULT} > \tLoading keyboard layout ... ${GREEN}done${DEFAULT}.\r\n"

	
	echo -ne "${RED}STRELIZIA - CHROOT${DEFAULT} > \tSetting up en_US.UTF-8 as default locale ...\r"
	echo -ne "LANG=en_US.UTF-8\nLC_COLLATE=C" > /etc/locale.conf
	sed -i '/^#en_US.UTF-8/ s/#//' /etc/locale.gen
	echo -ne "$${RED}STRELIZIA - CHROOT${DEFAULT} > \tSetting up en_US.UTF-8 as default locale ... ${GREEN}done${DEFAULT}.\r\n"
	locale-gen	
	echo -ne "\n${RED}STRELIZIA - CHROOT${DEFAULT} > System locales have been ${GREEN}successfully${DEFAULT} initialized.\n"
}

function setHostname {
	echo -ne "\n${RED}STRELIZIA - CHROOT${DEFAULT} > Enter the machine's hostname : "
	read hostname
	echo "$hostname" > /etc/hostname
	echo -ne "${RED}STRELIZIA - CHROOT${DEFAULT} > The machine's hostname is now $hostname.\n"
}

function setTimezone {
	echo -ne "\n${RED}STRELIZIA - CHROOT${DEFAULT} > Setting up timezone ...\r"
	ln -sf /usr/share/zoneinfo/Europe/Paris /etc/localtime
	if [ "$dualbooting" = false ]; then
		hwclock --systohc --utc
	fi
	echo -ne "${RED}STRELIZIA - CHROOT${DEFAULT} > Timezone ${GREEN}successfully${DEFAULT} set to \"Europe - Paris\".\r\n"
}

function generateKernelImage {
	echo -ne "\n${RED}STRELIZIA - CHROOT${DEFAULT} > Generating kernel image ...\r"
	mkinitcpio -p linux
	echo -ne "\n${RED}STRELIZIA - CHROOT${DEFAULT} > Kernel image ${GREEN}successfully${DEFAULT} generated.\r\n"
}

function installBootloader {
	echo -ne "\n${RED}STRELIZIA - CHROOT${DEFAULT} > Installing bootloader ...\r"
	if [[ $(checkBootmode) = "BIOS" ]]; then
		echo "Installing GRUB on $disk !! WAITING FOR CHECK, MASTER !!"
		read
		grub-install --no-floppy --recheck $disk
	else
		mount | grep efivars &> /dev/null || mount -t efivarfs efivarfs /sys/firmware/efi/efivars
		grub-install --target=x86_64-efi --efi-directory=/boot/efi --bootloader-id=arch_grub --recheck
		mkdir /boot/efi/EFI/boot
		cp /boot/efi/EFI/arch_grub/grubx64.efi /boot/efi/EFI/boot/bootx64.efi
	fi
	grub-mkconfig -o /boot/grub/grub.cfg
	echo -ne "\n${RED}STRELIZIA - CHROOT${DEFAULT} > Bootloader ${GREEN}successfully${DEFAULT} installed.\r\n"
}

function initializeNetworkManager {
	echo -e "\n${RED}STRELIZIA - CHROOT${DEFAULT} > Initializing NetworkManager ..."
	pacman --noconfirm -Sy networkmanager
	systemctl enable NetworkManager
	echo -e "\n${RED}STRELIZIA - CHROOT${DEFAULT} > NetworkManager ${GREEN}successfully${DEFAULT} initialized."
}

function createRootPassword {
	echo -e "\n${RED}STRELIZIA - CHROOT${DEFAULT} > Creating root password ..."
	passwd root
	echo -e "${RED}STRELIZIA - CHROOT${DEFAULT} > Root password ${GREEN}successfully${DEFAULT} created."
}

function createUserAccount {
	echo -e "\n${RED}STRELIZIA - CHROOT${DEFAULT} > Creating user account ..."
	echo -ne "Username : "
	read username #$username needs tests. It has to be fully lowercase, without special characters, spaces, or anything. Just [a-z][0-9].
	
	useradd -m -g wheel -s /bin/bash $username
	echo -e "\n${RED}STRELIZIA - CHROOT${DEFAULT} > Enter the password for $username's account : "
	passwd $username
	echo "%wheel ALL=(ALL) ALL" | (EDITOR="tee -a" visudo)
	echo -ne "\n${RED}STRELIZIA - CHROOT${DEFAULT} > $username's account has been ${GREEN}successfully${DEFAULT} initialized.\n"
}

function setupGit {
	echo -e "\n${RED}STRELIZIA${DEFAULT} > Downloading git ..."
	pacman --noconfirm -S git
	echo -e "${RED}STRELIZIA${DEFAULT} > git has been ${GREEN}successfully${DEFAULT} downloaded."

	echo -e "\n${RED}STRELIZIA${DEFAULT} > Initializing git ..."

		git config --global user.name "Fenrir"
		git config --global user.email "FoxehCorporation@protonmail.com"

	echo -e "${RED}STRELIZIA${DEFAULT} > git has been ${GREEN}successfully${DEFAULT} initialized."
}

function initializeYay {
	echo -e "\n${RED}STRELIZIA${DEFAULT} > Downloading yay ..."
	cd /home/$username
	git clone https://aur.archlinux.org/yay
	cd /home/$username/yay
	chown -R $username /home/$username/yay
	sudo -u $username makepkg --noconfirm -sri
	cd ~
	rm -rf /home/$username/yay
	echo -e "\n${RED}STRELIZIA${DEFAULT} > yay has been ${GREEN}successfully${DEFAULT} downloaded and initialized."
}

function setupXORG {
	echo -e "\n${RED}STRELIZIA${DEFAULT} > Downloading XORG ..."
	pacman --noconfirm -S xorg-{server,xinit,apps,twm,xclock} xf86-input-{mouse,keyboard} xdg-user-dirs xterm > /dev/null
	echo -e "${RED}STRELIZIA${DEFAULT} > XORG has been ${GREEN}successfully${DEFAULT} downloaded."

	echo -e "\n${RED}STRELIZIA${DEFAULT} > Initializing XORG ..."
	
		echo -ne "\n${RED}STRELIZIA${DEFAULT} > Setting up XORG locale ...\r"
		localectl set-x11-keymap fr
		echo -ne "${RED}STRELIZIA${DEFAULT} > Setting up XORG locale ... ${GREEN}done${DEFAULT}.\r\n"

		echo -ne "\n${RED}STRELIZIA${DEFAULT} > Downloading basic fonts ...\r"
		pacman --noconfirm -S ttf-{bitstream-vera,liberation,freefont,dejavu} freetype2 > /dev/null
		echo -ne "${RED}STRELIZIA${DEFAULT} > Downloading basic fonts ... ${GREEN}done${DEFAULT}.\r\n"

		echo -ne "\n${RED}STRELIZIA${DEFAULT} > \tCopying xinitrc to $username's home directory ...\r"
		cp /etc/X11/xinit/xinitrc /home/$username/.xinitrc
		echo -ne "${RED}STRELIZIA${DEFAULT} > xinitrc has been ${GREEN}successfully${DEFAULT} copied to $username's home directory.\r\n"

	echo -e "${RED}STRELIZIA${DEFAULT} > XORG has been ${GREEN}successfully${DEFAULT} initialized."
}

function setupi3gaps {
	echo -e "\n${RED}STRELIZIA${DEFAULT} > Downloading i3-gaps ..."
	pacman --noconfirm -S i3-gaps i3status termite > /dev/null
	echo -e "${RED}STRELIZIA${DEFAULT} > i3-gaps has been ${GREEN}successfully${DEFAULT} downloaded."

	echo -e "\n${RED}STRELIZIA${DEFAULT} > Initializing i3-gaps ..."

	echo -e "${RED}STRELIZIA${DEFAULT} > i3-gaps has been ${GREEN}successfully${DEFAULT} downloaded."
}

function setupSublimeText {
	curl -O https://download.sublimetext.com/sublimehq-pub.gpg && pacman-key --add sublimehq-pub.gpg && pacman-key --lsign-key 8A8F901A && rm sublimehq-pub.gpg
	echo -e "\n[sublime-text]\nServer = https://download.sublimetext.com/arch/stable/x86_64" | tee -a /etc/pacman.conf
	pacman --noconfirm -Syu sublime-text
}

### --- MAIN SCRIPT --- ###

if [ $# -eq 0 ]; then
	echo -ne "\n${RED}STRELIZIA - CHROOT${DEFAULT} > Setting up system for its first start ...\n"
	initializeLocales
	setTimezone
	generateKernelImage
	installBootloader
	initializeNetworkManager

	clear
	echo -e "\n${RED}STRELIZIA - CHROOT${DEFAULT} > This machine's setup is almost complete. Enabling interactive mode."
	setHostname
	createRootPassword
	createUserAccount
	echo -e "\n${RED}STRELIZIA - CHROOT${DEFAULT} > Required user input is now over. Disabling interactive mode."
	sleep 3
	clear
	
	cp /etc/skel/.bash_profile /root/
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
