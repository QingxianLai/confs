# Path to your oh-my-zsh installation.
export ZSH=/Users/LaiQX/.oh-my-zsh

# Set name of the theme to load.
# Look in ~/.oh-my-zsh/themes/
# Optionally, if you set this to "random", it'll load a random theme each
# time that oh-my-zsh is loaded.
ZSH_THEME="crunch"
#ZSH_THEME="robbyrussell"


# Uncomment the following line to use case-sensitive completion.
# CASE_SENSITIVE="true"

# Uncomment the following line to disable bi-weekly auto-update checks.
# DISABLE_AUTO_UPDATE="true"

# Uncomment the following line to change how often to auto-update (in days).
# export UPDATE_ZSH_DAYS=13

# Uncomment the following line to disable colors in ls.
# DISABLE_LS_COLORS="true"

# Uncomment the following line to disable auto-setting terminal title.
# DISABLE_AUTO_TITLE="true"

# Uncomment the following line to enable command auto-correction.
# ENABLE_CORRECTION="true"

# Uncomment the following line to display red dots whilst waiting for completion.
# COMPLETION_WAITING_DOTS="true"

# Uncomment the following line if you want to disable marking untracked files
# under VCS as dirty. This makes repository status check for large repositories
# much, much faster.
# DISABLE_UNTRACKED_FILES_DIRTY="true"

# Uncomment the following line if you want to change the command execution time
# stamp shown in the history command output.
# The optional three formats: "mm/dd/yyyy"|"dd.mm.yyyy"|"yyyy-mm-dd"
# HIST_STAMPS="mm/dd/yyyy"

# Would you like to use another custom folder than $ZSH/custom?
# ZSH_CUSTOM=/path/to/new-custom-folder

# Which plugins would you like to load? (plugins can be found in ~/.oh-my-zsh/plugins/*)
# Custom plugins may be added to ~/.oh-my-zsh/custom/plugins/
# Example format: plugins=(rails git textmate ruby lighthouse)
# Add wisely, as too many plugins slow down shell startup.
plugins=(git pip python)

# User configuration

export PATH="/usr/bin:/opt/local/bin:/opt/local/sbin:/opt/local/lib/postgresql93/bin/:/Library/Python/2.7/site-packages:/usr/bin:/bin:/usr/sbin:/sbin:/usr/local/bin:/usr/local/git/bin:/usr/texbin:/Users/LaiQX/spark-1.3.1/python"
# export MANPATH="/usr/local/man:$MANPATH"
export CLASSPATH=$CLASSPATH:~/Java/algorithm_1/algs4.jar:~/Java/algorithm_1/stdlib.jar
export CLASSPATH=$ClASSPATH:/Users/LaiQX/java_extensions/twitter4j-core-4.0.2-sources.jar
# export PATH=/Users/LaiQX/Desktop/RealTimeBigData/pig/pig-0.14.0/bin:$PATH
export JAVA_HOME=/System/Library/Frameworks/JavaVM.framework/Versions/1.6/Home
# export JAVA_HOME='/usr/libexec/java_home -v 1.8.0_40'
export JAVA_HOME='/Library/Java/JavaVirtualMachines/jdk1.8.0_40.jdk/Contents/Home'
export PIGDIR="/Users/LaiQX/pig"

#maven home path:
export M2_HOME=/Users/LaiQX/apache-maven-3.3.3
export PATH=$PATH:$M2_HOME/bin


export EC2_HOME='/usr/local/ec2/ec2-api-tools-1.7.3.0'
export PATH=$PATH:$EC2_HOME/bin 

export PYTHONPATH='${PYTHONPATH}:/usr/local/Cellar/pyqt/4.11.4/lib/python2.7/site-packages'
export PYTHONPATH='${PYTHONPATH}:/usr/local/Cellar/sip/4.16.9/lib/python2.7/site-packages'

#kdb+
export QHOME=~/q
export PATH=$PATH:$QHOME/m32
alias q='rlwrap -c -r q'


# environment variable to the system complain about "cc error " when using pip
export CFLAGS=-Qunused-arguments
export CPPFLAGS=-Qunused-arguments


source $ZSH/oh-my-zsh.sh


# You may need to manually set your language environment
# export LANG=en_US.UTF-8

# Preferred editor for local and remote sessions
if [[ -n $SSH_CONNECTION ]]; then
  export EDITOR='vim'
else
  export EDITOR='mvim'
fi

# Compilation flags
# export ARCHFLAGS="-arch x86_64"

# ssh
# export SSH_KEY_PATH="~/.ssh/dsa_id"

# Set personal aliases, overriding those provided by oh-my-zsh libs,
# plugins, and themes. Aliases can be placed here, though oh-my-zsh
# users are encouraged to define aliases within the ZSH_CUSTOM folder.
# For a full list of active aliases, run `alias`.
#
# Example aliases

alias career='cd /Users/LaiQX/Career'


alias zshconfig="mate ~/.zshrc"
alias ohmyzsh="mate ~/.oh-my-zsh"

# real vim! 
alias vim="/Applications/MacVim.app/Contents/MacOS/Vim"

alias ..='cd ..'
alias rm='rm -i'
alias cp='cp -i'
alias mv='mv -i'

alias df='df -kh'
alias du='du -kh'

alias cdd='cd ~/Desktop'
alias ls='ls -GFh'

alias code='cd ~/code'

alias leetcode='cd /Users/LaiQX/code/Java/LeetCodeOJ/AllOther/src'

# spark command
alias spark-shell='~/spark-1.3.1/bin/spark-shell'
alias pyspark='~/spark-1.3.1/bin/pyspark'
alias spark-sql='~/spark-1.3.1/bin/spark-sql'

#   finderShowHidden:   Show hidden files in Finder
#   finderHideHidden:   Hide hidden files in Finder
#   -------------------------------------------------------------------
alias showfile='defaults write com.apple.finder AppleShowAllFiles -bool true'
alias hidefile='defaults write com.apple.finder AppleShowAllFiles -bool false'

# to use solarized in terminal vim
export TERM="xterm-256color"


############copy from bash_profile
export CLICOLOR=1
export LSCOLORS=gxFxCxDxBxegedabagaced
##########################################################

# MySQL
alias mysql=/usr/local/mysql/bin/mysql
alias mysqladmin=/usr/local/mysql/bin/mysqladmin


. /Users/LaiQX/torch/install/bin/torch-activate

test -e "${HOME}/.iterm2_shell_integration.zsh" && source "${HOME}/.iterm2_shell_integration.zsh"
