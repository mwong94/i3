alias ls="ls -F --color=auto"
alias l="ls -l"
alias la="ls -lA"
alias cfmri="ssh -X ecwong@cfmri.ucsd.edu"
alias fmrimems2="ssh -X ecwong@fmrimems2.ucsd.edu"
alias jmw="ssh jillminwong@jillminwong.com"
alias raspberrypi="ssh -X -L 5899:localhost:5900  pi@maxpi.duckdns.org"
alias dodonet="nmcli -p con up id \"dodonet\""
alias sd="sudo shutdown -h +0"
alias rb="sudo reboot"
alias cpu="lscpu | grep \"CPU MHz\""
alias top="top -d 1"
alias backup="sudo rsync -aAXv /* /mnt --exclude={/home/max/Music/,/etc/fstab,/dev/*,/proc/*,/sys/*,/tmp/*,/run/*,/mnt/*,/media/*,/lost+found}"

alias layout1="setxkbmap -option altwin:swap_alt_win"
alias fnmode="sudo bash -c \"echo 2 > /sys/modules/hid_apple/parameters/fnmode\""

# Screen management
alias res="xrandr --output LVDS1 --scale 1.125x1.125 --panning 1440x900 --right-of HDMI1"
alias res1="xrandr --output HDMI1 --scale 1.12x1.12 --panning 1792x1008 --left-of LVDS1"
alias fixres="xrandr --output LVDS1 --scale 1x1 --panning 1280x800 --right-of HDMI1"
alias fixres1="xrandr --output HDMI1 --scale 1x1 --panning 1600x900 --left-of LVDS1"
alias screenoff="xrandr --output LVDS1 --off"
alias screen1off="xrandr --output HDMI1 --off"


#TEXT COLORS
################################################################################
TXTBLK='\e[0;30m'           # Black - Regular
TXTRED='\e[0;31m'           # Red
TXTGRN='\e[0;32m'           # Green
TXTYLW='\e[0;33m'           # Yellow
TXTBLU='\e[0;34m'           # Blue
TXTPUR='\e[0;35m'           # Purple
TXTCYN='\e[0;36m'           # Cyan
TXTWHT='\e[0;37m'           # White
BLDBLK='\e[1;30m'           # Black - Bold
BLDRED='\e[1;31m'           # Red
BLDGRN='\e[1;32m'           # Green
BLDYLW='\e[1;33m'           # Yellow
BLDBLU='\e[1;34m'           # Blue
BLDPUR='\e[1;35m'           # Purple
BLDCYN='\e[1;36m'           # Cyan
BLDWHT='\e[1;37m'           # White
UNDBLK='\e[4;30m'           # Black - Underline
UNDRED='\e[4;31m'           # Red
UNDGRN='\e[4;32m'           # Green
UNDYLW='\e[4;33m'           # Yellow
UNDBLU='\e[4;34m'           # Blue
UNDPUR='\e[4;35m'           # Purple
UNDCYN='\e[4;36m'           # Cyan
UNDWHT='\e[4;37m'           # White
BAKBLK='\e[40m'             # Black - Background
BAKRED='\e[41m'             # Red
BAKGRN='\e[42m'             # Green
BAKYLW='\e[43m'             # Yellow
BAKBLU='\e[44m'             # Blue
BAKPUR='\e[45m'             # Purple
BAKCYN='\e[46m'             # Cyan
BAKWHT='\e[47m'             # White
TXTRST='\e[0m'              # Text Reset
 
TXT236='\e[38;5;236m'       # Darkest Grey - Regular
TXT238='\e[38;5;238m'       # Darker Grey
TXTDGY='\e[38;5;000m'       # Dark Grey
TXTGRY='\e[38;5;241m'       # Grey
TXT232='\e[38;5;232m'       # Black
TXTBRD='\e[38;5;088m'       # Bright Red
TXTBBR='\e[38;5;196m'       # Brightest Red
 
BAK233='\e[48;5;233m'       # Darkest Grey - Background
BAKGRY='\e[48;5;241m'       # Darker Grey
BAK000='\e[48;5;000m'       # Dark Grey
BAKBRD='\e[48;5;130m'       # Bright Red
BAKBBR='\e[48;5;166m'       # Brightest Red

function myprompt {
	bat=`acpi | cut -d' ' -f4 | cut -d',' -f1`
	blk=$(tput setaf 0)
	red=$(tput setaf 1)
	grn=$(tput setaf 2)
	ylw=$(tput setaf 3)
	blu=$(tput setaf 4)
	pur=$(tput setaf 5)
	cyn=$(tput setaf 6)
	wht=$(tput setaf 7)
	reset=$(tput sgr0)
	# echo -ne "${TXTGRN}$USER${TXTGRY}@${TXTCYN}$HOSTNAME"
	# echo -ne " ${TXTYLW}$bat"
	# echo -ne " ${TXTPUR}$PWD"
	# echo -ne "${TXTGRN}$USER${TXTGRY}@${TXTCYN}$HOSTNAME ${TXTYLW}$bat ${TXTPUR}$PWD ${TXTGRY}>"
}
 
# PROMPT_COMMAND='myprompt'

bat=`acpi | cut -d' ' -f4 | cut -d',' -f1`
blk=$(tput setaf 0)
red=$(tput setaf 1)
grn=$(tput setaf 2)
ylw=$(tput setaf 3)
blu=$(tput setaf 4)
pur=$(tput setaf 5)
cyn=$(tput setaf 6)
wht=$(tput setaf 7)
reset=$(tput sgr0)

export PS1='\[$red\]\u\[$wht\]@\[$grn\]\h \[$blu\]$bat \[$pur\]$PWD \[$wht\]> '
# export PS1='\[$red\]\u\[$reset\]@\[$grn\]\h\[$reset\]:\[$blu\]\w\[$reset\] \$ '

# PS1="\`echo -ne \"${TXTGRN}$USER${TXTGRY}@${TXTCYN}$HOSTNAME ${TXTYLW}$bat ${TXTPUR}$PWD\"\`${TXTWHT} > "
# PS1="${TXTGRN}$USER${TXTGRY}@${TXTCYN}$HOSTNAME ${TXTYLW}$bat ${TXTPUR}$PWD${TXTWHT} > "
# PS2=">"

# export PS1="\u \w \# > "
export LSCOLORS='exfxxxxxxxxxxxxxxxexex'
export PATH=".:/home/max/bin:/usr/local/bin/komodo/bin:$PATH"
export EDITOR="vim"

set history = 100000
