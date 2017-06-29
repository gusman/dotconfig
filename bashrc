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
alias vitex='vim --servername VIM'


# Prompt
PS1='[\u@\h \W]\$ '

# Export variable
export JDK_HOME=$HOME/Java/jdk1.8.0_51
export ANT_HOME=$HOME/Java/apache-ant-1.9.6
export MVN_HOME=$HOME/Java/apache-maven-3.3.9
export JAVA_HOME=$JDK_HOME
export ANDROID_STUDIO_HOME=$HOME/android/android-studio
export GOPATH=$HOME/go


# Export VISUAL
export VISUAL=vim

# Export PATH
export PATH=$ANDROID_STUDIO_HOME/bin:$PATH
export PATH=$GOPATH/bin:$PATH
export PATH=$HOME/.local/bin/:$JDK_HOME/bin:$ANT_HOME/bin:$MVN_HOME/bin:$PATH

# Export Ranger config
export RANGER_LOAD_DEFAULT_RC=FALSE

if [ "$TERM" == "xterm-termite" ]; then
    # VTE
     . /etc/profile.d/vte.sh
     __vte_prompt_command

    # DIRCOLORS
    eval `dircolors ~/.dotconfig/dircolors/dircolors.molokai`
fi


