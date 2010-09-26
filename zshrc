# use vim as an editor
export EDITOR=mate

# aliases
if [ -e "$HOME/.aliases" ]; then
  source "$HOME/.aliases"
fi

# vi mode
bindkey -v

# use incremental search
bindkey ^R history-incremental-search-backward

# expand functions in the prompt
setopt prompt_subst

# prompt
# export PS1='[${SSH_CONNECTION+"%n@%m:"}%~] '

# ignore duplicate history entries
setopt histignoredups

# keep more history
# export HISTSIZE=200

# FROM OH-MY-ZSH below:

# Path to your oh-my-zsh configuration.
export ZSH=$HOME/.oh-my-zsh

# Set to the name theme to load.
# Look in ~/.oh-my-zsh/themes/
export ZSH_THEME="robbyrussell"

# Set to this to use case-sensitive completion
# export CASE_SENSITIVE="true"

# Comment this out to disable weekly auto-update checks
# export DISABLE_AUTO_UPDATE="true"

# Uncomment following line if you want to disable colors in ls
# export DISABLE_LS_COLORS="true"
source $ZSH/oh-my-zsh.sh

# Customize to your needs...

export PATH=/usr/local/sbin:$PATH
export PATH=$PATH:/Users/cameron/.gem/ruby/1.8/bin
export PATH=/opt/local/bin:/opt/local/sbin:$PATH

# RVM
source $HOME/.rvm/scripts/rvm

# Add my key because it doesn't persist across logins
ssh-add ~/.ssh/id_rsa

# Something about PERL for running the mechanize script
eval $(perl -I$HOME/perl5/lib/perl5 -Mlocal::lib)
