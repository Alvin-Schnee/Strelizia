#!/bin/zsh

# Script Name   : Strelizia
# Script Info   : Automatically handles an Archlinux deployment on a machine.
# Script Ver.   : 1.0.1 (19 Oct. 2021)
# Script Author : Alvin Schnee (FoxehCorp.)

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

# Clone from Git repo :

# loadkeys fr-latin9
# pacman -Sy git github-cli dos2unix
# gh auth login
# gh repo clone Alvin-Schnee/Strelizia
# rm -rf Strelizia/.git
# chmod +x Strelizia/Strelizia.sh
# dos2unix Strelizia/Strelizia.sh
# cd Strelizia/
# ./Strelizia.sh --disk /dev/sda

# Checkout from SVN repo :

# loadkeys fr-latin9
# pacman -Sy svn dos2unix
# svn checkout svn://svn.creajeux.fr/jmarliere/Strelizia_Archinstaller
# chmod +x Strelizia_Archinstaller/Strelizia.sh
# dos2unix Strelizia_Archinstaller/Strelizia.sh
# cd Strelizia_Archinstaller/
# ./Strelizia.sh --disk /dev/sda

###################### Global Variables #####################

GREEN='\033[1;32m'
YELLOW='\033[1;33m'
RED='\033[1;31m'
DEFAULT='\033[0m'

programName="Strelizia"
logHeader="${RED}$programName${DEFAULT} >"

DIRECTORY="$(cd "$(/usr/bin/dirname "${BASH_SOURCE[0]}")" && /bin/pwd)"

disk="DEFAULT"
debug=false

#############################################################

###################### Helper Functions #####################

function checkBootmode {
	if [ ! -d "/sys/firmware/efi/efivars" ]; then
		echo "BIOS"
	else
		echo "UEFI"
	fi
}

function debug_WaitForValidation {
	if [[ "$debug" = true ]]; then
		echo -ne "$logHeader Press return to continue. "
		read
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

####################### Main Functions ######################

function printHelp {
	echo -e "$programName"
	echo -e "Syntax :"
	echo -e "\t$programName <argument>"
	echo -e "Arguments :"
	echo -e "\t-b (alternatively --check-bootmode) : Checks and displays whether the boot mode is BIOS or UEFI."
	echo -e "\t-d (alternatively --debug) : Displays information useful for debugging, and enables breakpoints after each command."
	echo -e "\t-h (alternatively --help : Displays help concerning the command."
	echo -e "\t--disk /dev/sdX : Defines the disk you want to install Archlinux on. Replace X with the corresponding letter."
}

function formatPartitions {
	parted --script $disk \
	mklabel gpt \
	mkpart ESP fat32 1MiB 513MiB \
	set 1 boot on \
	mkpart SWAP linux-swap 513MiB 5GiB \
	mkpart / ext4 5GiB 25GiB \
	mkpart /home ext4 25GiB 100%
	
	mkfs.fat -F32 $disk"1" &> /dev/null
	mkfs.ext4 $disk"3" &> /dev/null
	mkfs.ext4 $disk"4" &> /dev/null	

	printSuccessOrFailure
	debug_WaitForValidation
}

function initializeSwap {
	mkswap $disk"2" &> /dev/null
	swapon $disk"2" &> /dev/null

	printSuccessOrFailure
	debug_WaitForValidation
}

function mountPartitions {
	mount $disk"3" /mnt
	
	mkdir /mnt/{boot,home}
	mkdir /mnt/boot/efi

	mount $disk"1" /mnt/boot/efi
	mount $disk"4" /mnt/home

	printSuccessOrFailure
	debug_WaitForValidation
}

#############################################################

#############################################################
#############################################################
#############################################################

#################### Argument Validation ####################

while test $# -gt 0
do
	case "$1" in
		-b | --check-bootmode)
			echo "$logHeader Bootmode appears to be $(checkBootmode)."
			exit 0
		;;
		-d | --debug)
			debug=true
		;;
		-h | --help)
			printHelp
			exit 0
		;;
		--disk)
			shift
			disk=${1:5:8}

			if [[ $disk = $(lsblk -io KNAME | sed -n "/${disk}$/p") ]]; then
				disk="$1"
				sed -i "s@REPLACE_WITH_DISK_VALUE@${disk}@g" StreliziaChroot
				echo "$logHeader Installation disk ${GREEN}successfully${DEFAULT} set to $disk."
				
			else 
				echo "$logHeader $1 does ${RED}not${DEFAULT} exist. Exiting."
				disk="DEFAULT"
				exit 1
			fi
		;;
		-* | --* | *)
			echo "$logHeader Argument $1 not defined. Exiting."
			exit 1
		;;
	esac
	shift
done

#############################################################

###################### Primary checks #######################

if [[ "$disk" = "DEFAULT" ]]; then
	echo "$logHeader Installation disk not set. Use \"$programName --disk /dev/sdX\" to indicate the disk you want to install Archlinux on."
	exit 1
fi

if [[ $(checkBootmode) = "BIOS" ]]; then
	echo "$logHeader Bootmode appears to be BIOS. $programName can't currently handle BIOS-based systems. Exiting."
	exit 1
fi

chmod +x StreliziaChroot.sh
dos2unix StreliziaChroot.sh

sed -i "s@REPLACE_WITH_PROGRAM_NAME@${programName}@g" StreliziaChroot.sh
clear

#############################################################

####################### Partitioning ########################

echo -ne "\n$logHeader Formatting partitions ... \t"
formatPartitions

echo -ne "$logHeader Initializing swap ... \t"
initializeSwap

echo -ne "$logHeader Mounting partitions ... \t"
mountPartitions

#############################################################

###################### Time & Locales #######################

echo -ne "\n$logHeader Enabling time synchronization ... "
systemctl start systemd-timesyncd
printSuccessOrFailure
debug_WaitForValidation

#############################################################

######################## Mirrorlist #########################

echo -ne "\n$logHeader Creating mirrorlist ... "
reflector --country 'France' -l 8 -p http --sort rate --save /etc/pacman.d/mirrorlist &> /dev/null
printSuccessOrFailure
debug_WaitForValidation

#############################################################

####################### Installation ########################

echo -ne "\n$logHeader Installing basic packages (this will take a while) ...    "
pacstrap /mnt linux mkinitcpio base base-devel pacman-contrib &> /dev/null
printSuccessOrFailure
debug_WaitForValidation

echo -ne "$logHeader Installing advanced packages (this will take a while) ... "
pacstrap /mnt zip unzip p7zip vim mc alsa-utils syslog-ng mtools dosfstools lsb-release ntfs-3g exfat-utils bash-completion intel-ucode openssh &> /dev/null
printSuccessOrFailure
debug_WaitForValidation

echo -ne "\n$logHeader Generating fstab ... "
genfstab -U -p /mnt >> /mnt/etc/fstab
printSuccessOrFailure
debug_WaitForValidation

echo -ne "\n$logHeader Downloading bootloader ... "
pacstrap /mnt grub os-prober efibootmgr &> /dev/null
printSuccessOrFailure
debug_WaitForValidation

cp StreliziaChroot.sh /mnt/bin/StreliziaChroot

echo -e "\n$logHeader Initial installation is now over."

#############################################################

########################## Chroot ###########################

echo -e "\n$logHeader Chrooting into the system ... "
arch-chroot /mnt ./bin/StreliziaChroot

#############################################################

####################### Finalization ########################

echo -ne "\n$logHeader Unmounting auxiliary devices ... "
umount -R /mnt
printSuccessOrFailure
debug_WaitForValidation

echo -ne "\n$logHeader Countdown before rebooting : 3\r"
sleep 1
echo -ne "\n$logHeader Countdown before rebooting : 2\r"
sleep 1
echo -ne "\n$logHeader Countdown before rebooting : 1\r"
sleep 1
echo -ne "\n$logHeader Rebooting ...                 \r"
reboot

#############################################################