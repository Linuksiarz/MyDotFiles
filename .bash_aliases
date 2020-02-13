source ~/.bash_secret_aliases

alias docker="sudo /usr/bin/docker"
alias current_audio="cat /proc/asound/card*/pcm*p/sub*/hw_params"
alias cfg='/usr/bin/git --git-dir=/home/linuksiarz/.cfg/ --work-tree=/home/linuksiarz'
alias vv='nvim'
alias vv_conf='vv ~/.config/nvim/init.vim'

# Colours
alias ls='ls --color=auto'
alias grep='grep --color=auto'
alias fgrep='fgrep --color=auto'
alias egrep='egrep --color=auto'

# MPD
alias mpd='(cd ~/.scripts/ && ./mpd_regular.sh)'
alias mpd_bit_perfect='(cd ~/.scripts/ && ./mpd_bit_perfect.sh)'

# Bose
alias bose-0="based-connect -c off 04:52:C7:32:6E:0E"
alias bose-1="based-connect -c low 04:52:C7:32:6E:0E"
alias bose-2="based-connect -c high 04:52:C7:32:6E:0E"
