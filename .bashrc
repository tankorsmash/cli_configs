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

NOW=$(date +"%m")

if [ "$color_prompt" = yes ]; then
    # PS1='${debian_chroot:+($debian_chroot)}\[\033[01;32m\]\u@\h\[\033[00m\]:\[\033[01;34m\]\w\[\033[00m\]\$ '
	# export PS1="\e[0;34m\w\e[m$"
	# export PS1="\n[\[\033[32m\]\w]\[\033[0m\]\n\t \$(__git_ps1) \[\033[1;36m\]\u\[\033[1;33m\]-> \[\033[0m\] "
	PROMPT_ERR='$(if [[ $? = 0 ]]; then echo -ne "( ͡° ͜ʖ ͡°)"; else echo -ne "( ͡°_ʖ ͡°)"; fi;)'
	export PS1="\n[\[\033[32m\]\w\[\033[0m\]]	$PROMPT_ERR\n\t\$(__git_ps1) \[\033[1;36m\]\u\[\033[1;33m\]-> \[\033[0m\] "



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
alias SCRIPTS="cd ~/chideit/reviewroom/scripts/"
alias TRANS="cd ~/chideit/reviewroom/scripts/trans"
alias MANAGE="cd ~/chideit/reviewroom/project"
alias VINNYMANAGE="cd ~/chideit/reviewroom/vinny"
alias BUNDLE="cd ~/.vim/bundle/"
alias APID="cd ~/chideit/apps/chide/products/reviewroom/api/apiv2/"

# launching django #
alias LAUNCHRR="google-chrome http://test.myreviewroom.dev:8080/admin/dashboard/ &"
alias LAUNCHIDT="google-chrome https://idonethis.com/cal/reviewroom-1/ &"
alias LAUNCHRRI="google-chrome --incognito http://test.myreviewroom.dev:8080/admin/dashboard/ &"
alias LAUNCHVIM="gvim"
alias LAUNCHACK="gnome-terminal --title=\"ACK\" "
alias LAUNCHSP="gnome-terminal --title=\"SHELL PLUS\" -x python ~/chideit/reviewroom/project/manage.py shell_plus"
alias LAUNCHVINNY="gnome-terminal --window-with-profile=vinny  --title=\"VINNY\" -x python ~/chideit/reviewroom/vinny/manage.py runserver 0.0.0.0:7077"
alias LAUNCHSERVER="gnome-terminal --window-with-profile=server --title=\"SERVER\" -x python ~/chideit/reviewroom/project/manage.py runserver 0.0.0.0:8080"
alias LSRV="LAUNCHSERVER"
alias LAUNCHBOTH="LAUNCHSERVER; LAUNCHVINNY;"
alias LAUNCHCAMPFIRE="google-chrome https://chideit.campfirenow.com/room/548608 &"
alias LAUNCHGMAIL="google-chrome http://mail.chide.it &"
alias MORNING="LAUNCHRR LAUNCHRRI LAUNCHACK LAUNCHSP LAUNCHBOTH LAUNCHCAMPFIRE LAUNCHGMAIL LAUNCHVIM "

alias LAUNCHCF=LAUNCHCAMPFIRE
alias LB=LAUNCHBOTH
alias LSP=LAUNCHSP
alias LSER=LAUNCHSERVER
# alias HELLO="LAUNCHVIM; LAUNCHACK; LSP; LAUNCHB;"

alias API2="python ~/chideit/apps/chide/products/reviewroom/api/apiv2/apiv2_fooling.py"
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

# ctags
alias CT="PRO; ctags -R; cd -"

# compilemessages with highlighting on the lang key
alias COMPILE="./compilemessages.sh &> /tmp/temp.txt;sed -s 's/^\(\/.*locale\/\)\(.*\)\(\/LC_MESSA.*\)/\1\x1b[0;34m\2\x1b[0m\3/' /tmp/temp.txt"


# testing
alias APITASK="~/chideit/reviewroom/project/manage.py test reviewroom.TaskResourceTest"
alias APIUSER="~/chideit/reviewroom/project/manage.py test reviewroom.UserResourceTest"
alias APITEAM="~/chideit/reviewroom/project/manage.py test reviewroom.TeamResourceTest"
alias APISUB="~/chideit/reviewroom/project/manage.py test reviewroom.SubmissionResourceTest"
alias APIALL="~/chideit/reviewroom/project/manage.py test reviewroom"
alias TEST="~/chideit/reviewroom/project/manage.py test reviewroom"
function TESTF() { 
	prefix='reviewroom.';
	if [ "$1" ]
	then
		tests="$prefix$1";
		shift
	else
		tests= '';
	fi

	#alternative 
	# for test in "$@"
	# do
	# 	tests="$tests $prefix$1";
	# done
	until [ -z "$1" ]
	do
		tests="$tests $prefix$1";
		shift
	done

	echo $tests
	if [ "$tests" ]
	then 
		~/chideit/reviewroom/project/manage.py test $tests;
	fi
} 
alias TESt=TEST
alias TEst=TEST

#search helpers; ag is the_silver_searcher
alias ag="ag -i"
function MVC() {
	ag "mvc.view.*$1" -Gpy $2
}

function MVCN() {
	ag "mvc.view.*name=.*$1" -Gpy $2
}

function agjs {
	ag "$1" -Gjs $2
}

function agpy {
	ag "$1" -Gpy $2
}

function agh {
	ag "$1" -Ghtml $2
}

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
alias FIXRES="xrandr --output HDMI1 --mode  1920x1080 --right-of VGA1 --output VGA1 --mode 1920x1080"

#remove .pycs 
alias FIXPYCs="find . -name "*.pyc" -exec rm -f {} \;"

title(){
	   # echo -en "\033]0;$1\a"
	   wmctrl -r :ACTIVE: -N $1
   }
# function gvim () { (/usr/bin/gvim -f --remote-silent "$@" &) }
PRO

. ~/django/extras/django_bash_completion

# multiline history #
shopt -s cmdhist
set -o vi

# . ~/.git_completion.sh
