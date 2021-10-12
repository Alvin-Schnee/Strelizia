#!/bin/zsh

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

# pacman -Sy git github-cli dos2unix
# gh auth login
# gh repo clone Alvin-Schnee/Strelizia


###################### Global Variables #####################

GREEN='\033[1;32m'
YELLOW='\033[1;33m'
RED='\033[1;31m'
DEFAULT='\033[0m'

programName="Epona"
logHeader="${RED}$programName${DEFAULT} >"

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
	if [[ $(checkBootmode) = "BIOS" ]]; then
		echo y | mkfs.ext4 $disk"1" > /dev/null
		echo y | mkfs.ext4 $disk"3" > /dev/null
		echo y | mkfs.ext4 $disk"4" > /dev/null
	else
		parted --script $disk \
		mklabel gpt \
		mkpart primary fat32 1MiB 513MiB \
		mkpart primary linux-swap 513MiB 5120MiB \
		mkpart primary ext4 5120MiB 25600MiB \
		mkpart primary ext4 25600MiB 100%
	fi
}

function initializeSwap {
	mkswap $disk"2"
	swapon $disk"2"
}

function mountPartitions {
	if [[ $(checkBootmode) = "BIOS" ]]; then
		mount $disk"3" /mnt
		mkdir /mnt/{boot,home}
		mount $disk"1" /mnt/boot
		mount $disk"4" /mnt/home
	else
		mount $disk"1" /mnt
		mkdir /mnt/{boot,home}
		mkdir /mnt/boot/efi
		if [ "$dualbooting" = true ]; then
			mount UEFIPartition /mnt/boot/efi
		else
			mount $disk"2" /mnt/boot/efi
		fi
		mount $disk"4" /mnt/home
	fi
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
				#sed -i "s@REPLACE_WITH_DISK_VALUE@${disk}@g" /bin/FTK_Initializer
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


#############################################################



echo -e "\n$logHeader Formatting partitions ..."
formatPartitions
echo -e "$logHeader Formatting partitions ... ${GREEN}done${DEFAULT}."

debug_WaitForValidation


: '

echo -e "\n${RED}STRELIZIA${DEFAULT} > Initializing swap ..."
initializeSwap
echo -e "${RED}STRELIZIA${DEFAULT} > Initializing swap ... ${GREEN}done${DEFAULT}."

debug_WaitForValidation

echo -e "\n${RED}STRELIZIA${DEFAULT} > Mounting partitions ..."
mountPartitions
echo -e "${RED}STRELIZIA${DEFAULT} > Mounting partitions ... ${GREEN}done${DEFAULT}."

debug_WaitForValidation

echo -e "\n${RED}STRELIZIA${DEFAULT} > Enabling time synchronization ..."
systemctl start systemd-timesyncd
echo -e "${RED}STRELIZIA${DEFAULT} > Time synchronization ${GREEN}enabled${DEFAULT}."

debug_WaitForValidation

echo -e "\n${RED}STRELIZIA${DEFAULT} > Creating mirrorlist ..."
curl -s "https://www.archlinux.org/mirrorlist/?country=FR&country=GB&protocol=https&use_mirror_status=on" | sed -e 's/^#Server/Server/' -e '/^#/d' | rankmirrors -n 5 - > /etc/pacman.d/mirrorlist
echo -e "${RED}STRELIZIA${DEFAULT} > The mirrorlist has been ${GREEN}successfully${DEFAULT} created."

debug_WaitForValidation

echo -e "\n${RED}STRELIZIA${DEFAULT} > Installing basic packages ..."
pacstrap /mnt base base-devel pacman-contrib
echo -e "${RED}STRELIZIA${DEFAULT} > All basic packages have been ${GREEN}successfully${DEFAULT} installed."

debug_WaitForValidation

echo -ne "\n${RED}STRELIZIA${DEFAULT} > Installing advanced packages ...\n"
pacstrap /mnt zip unzip p7zip vim mc alsa-utils syslog-ng mtools dosfstools lsb-release ntfs-3g exfat-utils bash-completion intel-ucode openssh
echo -ne "\n${RED}STRELIZIA${DEFAULT} > All advanced packages have been ${GREEN}successfully${DEFAULT} installed."

debug_WaitForValidation

echo -ne "\n${RED}STRELIZIA${DEFAULT} > Generating fstab ...\r"
genfstab -U -p /mnt >> /mnt/etc/fstab
echo -ne "\n${RED}STRELIZIA${DEFAULT} > fstab has been ${GREEN}successfully${DEFAULT} generated.\r\n"

debug_WaitForValidation

echo -ne "\n${RED}STRELIZIA${DEFAULT} > Downloading bootloader ...\r"
if [[ $(checkBootmode) = "BIOS" ]]; then
	pacstrap /mnt grub os-prober
else
	pacstrap /mnt grub os-prober efibootmgr
fi
echo -ne "\n${RED}STRELIZIA${DEFAULT} > The bootloader has been ${GREEN}successfully${DEFAULT} downloaded.\r\n"

debug_WaitForValidation

cp /bin/FTK_Initializer /mnt/bin

echo -ne "\n${RED}STRELIZIA${DEFAULT} > Initial installation is now over.\n"


echo -ne "\n${RED}STRELIZIA${DEFAULT} > Chrooting into the system ...\n"
arch-chroot /mnt ./bin/FTK_Initializer

debug_WaitForValidation

echo -ne "\n${RED}STRELIZIA${DEFAULT} > Unmounting auxiliary devices ...\r"
umount -R /mnt
echo -ne "\n${RED}STRELIZIA${DEFAULT} > Unmounting auxiliary devices ... ${GREEN}done${DEFAULT}.\r\n"

debug_WaitForValidation

echo -ne "\n${RED}STRELIZIA${DEFAULT} > Countdown before rebooting : 3\r"
sleep 1
echo -ne "\n${RED}STRELIZIA${DEFAULT} > Countdown before rebooting : 2\r"
sleep 1
echo -ne "\n${RED}STRELIZIA${DEFAULT} > Countdown before rebooting : 1\r"
sleep 1
echo -ne "\n${RED}STRELIZIA${DEFAULT} > Rebooting ...                 \r"
reboot

'