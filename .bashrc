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

export PS1="\u \w \# > "
export LSCOLORS='exfxxxxxxxxxxxxxxxexex'
export PATH=".:/home/max/bin:/usr/local/bin/komodo/bin:$PATH"
export EDITOR="vim"

set history = 100000
