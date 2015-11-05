export PYTHONPATH="/Library/Python/2.7/site-packages:$PYTHONPATH"
export PATH="/Library/Python/2.7/site-packages:$PATH"
# export PATH="/System/Library/Frameworks/Python.framework/Versions/2.7/python:$PATH"
export PATH="/opt/local/lib/postgresql93/bin/:$PATH"



# MacPorts Installer addition on 2014-10-08_at_01:03:13: adding an appropriate PATH variable for use with MacPorts.
export PATH="/opt/local/bin:/opt/local/sbin:$PATH"
# Finished adapting your PATH environment variable for use with MacPorts.
export CLASSPATH=$CLASSPATH:~/Java/algorithm_1/algs4.jar:~/Java/algorithm_1/stdlib.jar


#########Emacs################################################
alias emacs='/opt/local/bin/emacs'


##### COLORS #####################################################

# normal colors!
Black='\e[0;30m'        # Black
Red='\e[0;31m'          # Red
Green='\e[0;32m'        # Green
Yellow='\e[0;33m'       # Yellow
Blue='\e[0;34m'         # Blue
Purple='\e[0;35m'       # Purple
Cyan='\e[0;36m'         # Cyan
White='\e[0;37m'        # White

# Bold colors
BBlack='\e[1;30m'       # Black
BRed='\e[1;31m'         # Red
BGreen='\e[1;32m'       # Green
BYellow='\e[1;33m'      # Yellow
BBlue='\e[1;34m'        # Blue
BPurple='\e[1;35m'      # Purple
BCyan='\e[1;36m'        # Cyan
BWhite='\e[1;37m'       # White

# Background Colors
On_Black='\e[40m'       # Black
On_Red='\e[41m'         # Red
On_Green='\e[42m'       # Green
On_Yellow='\e[43m'      # Yellow
On_Blue='\e[44m'        # Blue
On_Purple='\e[45m'      # Purple
On_Cyan='\e[46m'        # Cyan
On_White='\e[47m'       # White


reset="\e[0m"

#########################################################





## GIT ##################################################

#Enable tab completion
source ~/git-completion.bash

# Change command prompt
source ~/git-prompt.sh
export GIT_PS1_SHOWDIRTYSTATE=1
# '\u' adds the name of the current user to the prompt
# '\$(__git_ps1)' adds git-related stuff
# '\W' adds the name of the current directory
export PS1="\[$Red\]\u \[$White\]@ \[$On_Blue\]\A \[$Green\]\$(__git_ps1) \[$Yellow\]\w \$ \[$reset\]"

export CLICOLOR=1
export LSCOLORS=gxFxCxDxBxegedabagaced
##########################################################


###### ALIASES AND FUNCTIONS ############################

alias rm='rm -i'
alias cp='cp -i'
alias mv='mv -i'

alias df='df -kh'
alias du='du -kh'

alias cdd='cd ~/Desktop'
alias ls='ls -GFh'

##For the 15 fall semester
#alias cdm='cd ~/Desktop/Machine_Learning_1003/'
#alias cdr='cd ~/Desktop/RealTimeBigData/'


##########################################################


#   finderShowHidden:   Show hidden files in Finder
#   finderHideHidden:   Hide hidden files in Finder
#   -------------------------------------------------------------------
#alias finderShowHidden='defaults write com.apple.finder ShowAllFiles TRUE'
#alias finderHideHidden='defaults write com.apple.finder ShowAllFiles FALSE'



function title()
{
    TITLE=$*;
    export PROMPT_COMMAND = 'echo -ne "\033]0;TITLE\007"';
}


function tabname 
{
    printf "\e]1;$1\a"
}


# Setting PATH for Python 2.7
# The orginal version is saved in .bash_profile.pysave
# PATH="/Library/Frameworks/Python.framework/Versions/2.7/bin:${PATH}"
#export PATH
#export PATH="/usr/bin:$PATH"
