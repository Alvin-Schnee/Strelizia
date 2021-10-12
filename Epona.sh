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

logHeader="${RED}STRELIZIA${DEFAULT} >"

space=''
for i in `seq 1 ${#"$0"}`; do 
    space+=' ' 
done

#############################################################

###################### Helper Functions #####################



#############################################################

####################### Main Functions ######################

function handleArguments {
    while test $# -gt 0
    do
        case "$1" in
            -d | --debug)
                debug=true
            ;;
            -h | --help)
                printHelp
                exit 0
            ;;
            --disk)

                ### Read the disk name passed after --disk, and check its existence.

                shift
                disk=${1:5:8}
                #command=$(lsblk -io KNAME | sed -n "/${partition}$/p")

                if [[ $disk = $(lsblk -io KNAME | sed -n "/${disk}$/p") ]]; then
                    disk="$1"
                    sed -i "s@REPLACE_WITH_DISK_VALUE@${disk}@g" /bin/FTK_Initializer
                    echo -e "$logHeader Installation disk ${GREEN}successfully${DEFAULT} set to $disk."
                
                else 
                    echo -e "$logHeader $1 does ${RED}not${DEFAULT} exist. Exiting."
                    exit 1
                fi
            ;;
            -* | --* | *)
                echo -e "$logHeader Argument $1 not defined. Exiting."
                exit 1
            ;;
        esac
        shift
    done
}

#############################################################

#############################################################
#############################################################
#############################################################

#################### Argument Validation ####################

handleArguments

#############################################################

###################### Primary checks #######################

if [[ "$disk" = "DEFAULT" ]]; then
	echo -e "$logHeader Installation disk not set. Use \"FTK_ArchInstaller --disk /dev/sdX\" to indicate the disk you want to install Archlinux on."
	exit 1
fi

#############################################################

: '

echo -e "\n${RED}STRELIZIA${DEFAULT} > Formatting partitions ..."
formatPartitions
echo -e "${RED}STRELIZIA${DEFAULT} > Formatting partitions ... ${GREEN}done${DEFAULT}."

if [[ "$debug" = true ]]; then
	echo -ne "${RED}STRELIZIA${DEFAULT} > Press return to continue. "
	read
fi

echo -e "\n${RED}STRELIZIA${DEFAULT} > Initializing swap ..."
initializeSwap
echo -e "${RED}STRELIZIA${DEFAULT} > Initializing swap ... ${GREEN}done${DEFAULT}."

if [[ "$debug" = true ]]; then
	echo -ne "${RED}STRELIZIA${DEFAULT} > Press return to continue. "
	read
fi

echo -e "\n${RED}STRELIZIA${DEFAULT} > Mounting partitions ..."
mountPartitions
echo -e "${RED}STRELIZIA${DEFAULT} > Mounting partitions ... ${GREEN}done${DEFAULT}."

if [[ "$debug" = true ]]; then
	echo -ne "${RED}STRELIZIA${DEFAULT} > Press return to continue. "
	read
fi

echo -e "\n${RED}STRELIZIA${DEFAULT} > Enabling time synchronization ..."
systemctl start systemd-timesyncd
echo -e "${RED}STRELIZIA${DEFAULT} > Time synchronization ${GREEN}enabled${DEFAULT}."

if [[ "$debug" = true ]]; then
	echo -ne "${RED}STRELIZIA${DEFAULT} > Press return to continue. "
	read
fi

echo -e "\n${RED}STRELIZIA${DEFAULT} > Creating mirrorlist ..."
curl -s "https://www.archlinux.org/mirrorlist/?country=FR&country=GB&protocol=https&use_mirror_status=on" | sed -e 's/^#Server/Server/' -e '/^#/d' | rankmirrors -n 5 - > /etc/pacman.d/mirrorlist
echo -e "${RED}STRELIZIA${DEFAULT} > The mirrorlist has been ${GREEN}successfully${DEFAULT} created."

if [[ "$debug" = true ]]; then
	echo -ne "${RED}STRELIZIA${DEFAULT} > Press return to continue. "
	read
fi

echo -e "\n${RED}STRELIZIA${DEFAULT} > Installing basic packages ..."
pacstrap /mnt base base-devel pacman-contrib
echo -e "${RED}STRELIZIA${DEFAULT} > All basic packages have been ${GREEN}successfully${DEFAULT} installed."

if [[ "$debug" = true ]]; then
	echo -ne "${RED}STRELIZIA${DEFAULT} > Press return to continue. "
	read
fi

echo -ne "\n${RED}STRELIZIA${DEFAULT} > Installing advanced packages ...\n"
pacstrap /mnt zip unzip p7zip vim mc alsa-utils syslog-ng mtools dosfstools lsb-release ntfs-3g exfat-utils bash-completion intel-ucode openssh
echo -ne "\n${RED}STRELIZIA${DEFAULT} > All advanced packages have been ${GREEN}successfully${DEFAULT} installed."

if [[ "$debug" = true ]]; then
	echo -ne "\n${RED}STRELIZIA${DEFAULT} > Press return to continue. "
	read
fi

echo -ne "\n${RED}STRELIZIA${DEFAULT} > Generating fstab ...\r"
genfstab -U -p /mnt >> /mnt/etc/fstab
echo -ne "\n${RED}STRELIZIA${DEFAULT} > fstab has been ${GREEN}successfully${DEFAULT} generated.\r\n"

if [[ "$debug" = true ]]; then
	echo -ne "\n${RED}STRELIZIA${DEFAULT} > Press return to continue. "
	read
fi

echo -ne "\n${RED}STRELIZIA${DEFAULT} > Downloading bootloader ...\r"
if [[ $(checkBootmode) = "BIOS" ]]; then
	pacstrap /mnt grub os-prober
else
	pacstrap /mnt grub os-prober efibootmgr
fi
echo -ne "\n${RED}STRELIZIA${DEFAULT} > The bootloader has been ${GREEN}successfully${DEFAULT} downloaded.\r\n"

if [[ "$debug" = true ]]; then
	echo -ne "\n${RED}STRELIZIA${DEFAULT} > Press return to continue. "
	read
fi

cp /bin/FTK_Initializer /mnt/bin

echo -ne "\n${RED}STRELIZIA${DEFAULT} > Initial installation is now over.\n"


echo -ne "\n${RED}STRELIZIA${DEFAULT} > Chrooting into the system ...\n"
arch-chroot /mnt ./bin/FTK_Initializer

if [[ "$debug" = true ]]; then
	echo -ne "\n${RED}STRELIZIA${DEFAULT} > Press return to continue. "
	read
fi

echo -ne "\n${RED}STRELIZIA${DEFAULT} > Unmounting auxiliary devices ...\r"
umount -R /mnt
echo -ne "\n${RED}STRELIZIA${DEFAULT} > Unmounting auxiliary devices ... ${GREEN}done${DEFAULT}.\r\n"

if [[ "$debug" = true ]]; then
	echo -ne "\n${RED}STRELIZIA${DEFAULT} > Press return to continue. "
	read
fi

echo -ne "\n${RED}STRELIZIA${DEFAULT} > Countdown before rebooting : 3\r"
sleep 1
echo -ne "\n${RED}STRELIZIA${DEFAULT} > Countdown before rebooting : 2\r"
sleep 1
echo -ne "\n${RED}STRELIZIA${DEFAULT} > Countdown before rebooting : 1\r"
sleep 1
echo -ne "\n${RED}STRELIZIA${DEFAULT} > Rebooting ...                 \r"
reboot

'
