# ~/.bashrc: executed by bash(1) for non-login shells.
# see /usr/share/doc/bash/examples/startup-files (in the package bash-doc)
# for examples

# If not running interactively, don't do anything
[ -z "$PS1" ] && return

# don't put duplicate lines or lines starting with space in the history.
# See bash(1) for more options
HISTCONTROL=ignoreboth
# append to the history file, don't overwrite it
shopt -s histappend

# for setting history length see HISTSIZE and HISTFILESIZE in bash(1)
HISTSIZE=10000
HISTFILESIZE=20000

# check the window size after each command and, if necessary,
# update the values of LINES and COLUMNS.
shopt -s checkwinsize

# If set, the pattern "**" used in a pathname expansion context will
# match all files and zero or more directories and subdirectories.
#shopt -s globstar

# make less more friendly for non-text input files, see lesspipe(1)
[ -x /usr/bin/lesspipe ] && eval "$(SHELL=/bin/sh lesspipe)"

# set variable identifying the chroot you work in (used in the prompt below)
if [ -z "$debian_chroot" ] && [ -r /etc/debian_chroot ]; then
    debian_chroot=$(cat /etc/debian_chroot)
fi

# set a fancy prompt (non-color, unless we know we "want" color)
case "$TERM" in
    xterm-color) color_prompt=yes;;
esac

# uncomment for a colored prompt, if the terminal has the capability; turned
# off by default to not distract the user: the focus in a terminal window
# should be on the output of commands, not on the prompt
force_color_prompt=yes

if [ -n "$force_color_prompt" ]; then
    if [ -x /usr/bin/tput ] && tput setaf 1 >&/dev/null; then
	# We have color support; assume it's compliant with Ecma-48
	# (ISO/IEC-6429). (Lack of such support is extremely rare, and such
	# a case would tend to support setf rather than setaf.)
	color_prompt=yes
    else
	color_prompt=
    fi
fi

source ~/.git-prompt.sh

if [ "$color_prompt" = yes ]; then
    # PS1='${debian_chroot:+($debian_chroot)}\[\033[01;32m\]\u@\h\[\033[00m\]:\[\033[01;34m\]\w\[\033[00m\]\$ '
	# export PS1="\e[0;34m\w\e[m$"
	# export PS1="\n[\[\033[32m\]\w]\[\033[0m\]\n\t \$(__git_ps1) \[\033[1;36m\]\u\[\033[1;33m\]-> \[\033[0m\] "
	export PS1="\n[\[\033[32m\]\w\[\033[0m\]]\n\t\$(__git_ps1) \[\033[1;36m\]\u\[\033[1;33m\]-> \[\033[0m\] "

else
    PS1='${debian_chroot:+($debian_chroot)}\u@\h:\w\$ '
fi
unset color_prompt force_color_prompt

# If this is an xterm set the title to user@host:dir
case "$TERM" in
xterm*|rxvt*)
    PS1="\[\e]0;${debian_chroot:+($debian_chroot)}\u@\h: \w\a\]$PS1"
    ;;
*)
    ;;
esac

# enable color support of ls and also add handy aliases
if [ -x /usr/bin/dircolors ]; then
    test -r ~/.dircolors && eval "$(dircolors -b ~/.dircolors)" || eval "$(dircolors -b)"
    alias ls='ls --color=auto'
    #alias dir='dir --color=auto'
    #alias vdir='vdir --color=auto'

    alias grep='grep --color=auto'
    alias fgrep='fgrep --color=auto'
    alias egrep='egrep --color=auto'
fi

# some more ls aliases
alias ll='ls -alF'
alias la='ls -A'
alias l='ls -CF'
alias STAT='git status -sb'

# Add an "alert" alias for long running commands.  Use like so:
#   sleep 10; alert
alias alert='notify-send --urgency=low -i "$([ $? = 0 ] && echo terminal || echo error)" "$(history|tail -n1|sed -e '\''s/^\s*[0-9]\+\s*//;s/[;&|]\s*alert$//'\'')"'

# Alias definitions.
# You may want to put all your additions into a separate file like
# ~/.bash_aliases, instead of adding them here directly.
# See /usr/share/doc/bash-doc/examples in the bash-doc package.

if [ -f ~/.bash_aliases ]; then
    . ~/.bash_aliases
fi

# enable programmable completion features (you don't need to enable
# this, if it's already enabled in /etc/bash.bashrc and /etc/profile
# sources /etc/bash.bashrc).
if [ -f /etc/bash_completion ] && ! shopt -oq posix; then
    . /etc/bash_completion
fi


# directory management #
alias PRO="cd ~/chideit/"
alias MANAGE="cd ~/chideit/reviewroom/project"
alias VINNYMANAGE="cd ~/chideit/reviewroom/vinny"
alias BUNDLE="cd ~/.vim/bundle/"
alias APID="cd ~/chideit/apps/chide/products/reviewroom/api/apiv2/"

# launching django #
alias LAUNCHSP="gnome-terminal --title=\"SHELL PLUS\" -x python ~/chideit/reviewroom/project/manage.py shell_plus"
alias LAUNCHVINNY="gnome-terminal --title=\"VINNY\" -x python ~/chideit/reviewroom/vinny/manage.py runserver 0.0.0.0:7077"
alias LAUNCHSERVER="gnome-terminal --window-with-profile=server --title=\"SERVER\" -x python ~/chideit/reviewroom/project/manage.py runserver 0.0.0.0:8080"
alias LAUNCHBOTH="LAUNCHVINNY;LAUNCHSERVER"
alias LB=LAUNCHBOTH
alias LSP=LAUNCHSP
alias API="python ~/chideit/apps/chide/products/reviewroom/api/apiv2/apiv2_fooling.py"
alias API1="python ~/chideit/apps/chide/products/reviewroom/api/api_fooling.py"

# git logging #
alias LOGV="git log --pretty=format:'%C(yellow)%h%Cred%d %Creset%s%Cblue [%cn]' --decorate"
alias LOGD="git log --pretty=format:'%C(yellow)%h %Cgreen%ad%Cred%d %Creset%s%Cblue [%cn]' --decorate --date=relative"

# git checkout branches #
alias RRCO="git checkout ReviewRoom-5.0"
alias APICO="git checkout josh/apiv2"
alias RCMPFCO="git checkout josh/rcmpf"
alias GPR="git pull --rebase"

# show current branch
alias B="git rev-parse --abbrev-ref HEAD"

# testing
alias APITASK="~/chideit/reviewroom/project/manage.py test reviewroom.TaskResourceTest"
alias APIUSER="~/chideit/reviewroom/project/manage.py test reviewroom.UserResourceTest"
alias APITEAM="~/chideit/reviewroom/project/manage.py test reviewroom.TeamResourceTest"
alias APISUB="~/chideit/reviewroom/project/manage.py test reviewroom.SubmissionResourceTest"
alias APIALL="~/chideit/reviewroom/project/manage.py test reviewroom"

#show modified files
alias LS="git ls-files -m"
alias A="ack"
alias LESS="less -SEX"
alias C="clear"
alias CO="git checkout"
alias G="git grep"
alias GD="git diff"
alias GP="git push"

alias QUALE="echo \"Close Enough\"; QUAKE"
alias QUAKE="cd ~/quake3;sudo ./quake3.x86; FIXRES; cd -"
alias Q="QUAKE"

# dick moves
alias sl="sl -ale"

# fix resolution
alias FIXRES="xrandr --output HDMI1 --mode  1920x1080 --right-of VGA1 --output VGA1 --mode 1680x1050"

title(){
	   # echo -en "\033]0;$1\a"
	   wmctrl -r :ACTIVE: -N $1
   }
# function gvim () { (/usr/bin/gvim -f --remote-silent "$@" &) }
PRO

# multiline history #
shopt -s cmdhist
set -o vi
