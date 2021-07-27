# Path to your oh-my-zsh configuration.  ZSH=$HOME/.oh-my-zsh # Set name of the theme to load.  # Look in ~/.oh-my-zsh/themes/ # Optionally, if you set this to "random", it'll load a random theme each # time that oh-my-zsh is loaded.  ZSH_THEME="norm" # Set to this to use case-sensitive completion # CASE_SENSITIVE="true" # Comment this out to disable weekly auto-update checks
# DISABLE_AUTO_UPDATE="true"
ZSH=$HOME/.oh-my-zsh

ZSH_THEME="norm"
#   0 ZSH_THEME="robbyrussell"ZSH_THEME="robbyrussell"
# Uncomment following line if you want to disable colors in ls
# DISABLE_LS_COLORS="true"
#
export WORKON_HOME=/Users/jules/dev/venvs
export VIRTUALENVWRAPPER_PYTHON=/usr/local/bin/python3
 #Uncomment following line if you want to disable autosetting terminal title.
# DISABLE_AUTO_TITLE="true"

# Uncomment following line if you want red dots to be displayed while waiting for completion
# COMPLETION_WAITING_DOTS="true"

# Which plugins would you like to load? (plugins can be found in ~/.oh-my-zsh/plugins/*)
# Example format: plugins=(rails git textmate ruby lighthouse)
plugins=(git brew git-flow osx sprunge)
#aliases:
# disable unsecure completion complaint
ZSH_DISABLE_COMPFIX=true
source $ZSH/oh-my-zsh.sh

export LANG=en_US.UTF-8
export LC_ALL=en_US.UTF-8
export LC_CTYPE=en_US.UTF-8
# Customize to your needs...
#

export PATH=$PATH:/usr/local/bin:/usr/local/sbin:/usr/bin:/bin:/usr/sbin:/sbin:/Library/TeX/texbin:/Users/jules/bin
alias rake="noglob rake"

export PAGER=/usr/local/bin/vimpager
alias less=$PAGER
alias zless=$PAGER
alias r=/usr/local/bin/r

export PATH="$PATH:$HOME/.rvm/bin" # Add RVM to PATH for scripting
export PATH=/usr/local/anaconda3/bin:"$PATH"
export PATH=$PATH:/usr/local/Cellar/gnupg/2.2.10/bin

#adding colors to man
#
#export MANROFFOPT='-c'
#export LESS_TERMCAP_mb=$(tput bold; tput setaf 2)
#export LESS_TERMCAP_md=$(tput bold; tput setaf 6)
#export LESS_TERMCAP_me=$(tput sgr0)
#export LESS_TERMCAP_so=$(tput bold; tput setaf 3; tput setab 4)
#export LESS_TERMCAP_se=$(tput rmso; tput sgr0)
#export LESS_TERMCAP_us=$(tput smul; tput bold; tput setaf 7)
#export LESS_TERMCAP_ue=$(tput rmul; tput sgr0)
#export LESS_TERMCAP_mr=$(tput rev)#
#export LESS_TERMCAP_mh=$(tput dim)
#


set syntax on
unsetopt BEEP


function removeFromPath() {
	export PATH=$(echo $PATH | sed -E -e "s;:$1;;" -e "s;$1:?;;")
}

export PATH="/opt/homebrew/bin:$PATH"

#ensure ARM brew is first in PATH
#if [ -d "/opt/homebrew/bin" ]; then
#    export PATH="/opt/homebrew/bin:$PATH"
#fi

function ibrew() {
   arch --x86_64 /usr/local/bin/brew $@
}

function x86(){
  arch --x86_64 $@
}
