#
# ~/.bashrc
#

# If not running interactively, don't do anything
[[ $- != *i* ]] && return


# Aliasing
alias ls='ls --color=auto'
#alias tmux='tmux -2'
alias empty='rm -rf $HOME/.local/share/Trash/files'
alias trash-check='cd $HOME/.local/share/Trash/files && ls -ll'

# Prompt
PS1='[\u@\h \W]\$ '

# Export variable
export JDK_HOME=$HOME/Java/jdk1.8.0_51
export ANT_HOME=$HOME/Java/apache-ant-1.9.6
export MVN_HOME=$HOME/Java/apache-maven-3.3.9
export JAVA_HOME=$JDK_HOME

# Export VISUAL
export VISUAL=vim

# Export PATH
export PATH=$HOME/.local/bin/:$JDK_HOME/bin:$ANT_HOME/bin:$MVN_HOME/bin:$PATH

# Export Ranger config
export RANGER_LOAD_DEFAULT_RC=FALSE

# POWERLINE configuration
if [ "$TERM" == "xterm-termite" ] || [ "$TERM" == "tmux" ]; then
    # DIRCOLORS
    eval `dircolors ~/.dotconfig/dircolors/dircolors.256dark`

    # POWERLINE
    powerline-daemon -q
    POWERLINE_BASH_CONTINUATION=1
    POWERLINE_BASH_SELECT=1
    . /usr/lib/python3.6/site-packages/powerline/bindings/bash/powerline.sh
fi


