# Path to your oh-my-zsh configuration.
export ZSH=$HOME/.oh-my-zsh

# Set name of the theme to load.
# Look in ~/.oh-my-zsh/themes/
# Optionally, if you set this to "random", it'll load a random theme each
# time that oh-my-zsh is loaded.
#export ZSH_THEME="robbyrussell"
export ZSH_THEME="xiong-chiamiov-plus-2"

# Set to this to use case-sensitive completion
export CASE_SENSITIVE="true"

# Comment this out to disable weekly auto-update checks
export DISABLE_AUTO_UPDATE="true"

# allow homebrew to access github
HOMEBREW_GITHUB_API_TOKEN="afeb89757696762b9cf9216925bd7f7b233ef698"

# Uncomment following line if you want to disable colors in ls
# export DISABLE_LS_COLORS="true"

# Uncomment following line if you want to disable autosetting terminal title.
# export DISABLE_AUTO_TITLE="true"

# Which plugins would you like to load? (plugins can be found in ~/.oh-my-zsh/plugins/*)
# Example format: plugins=(rails git textmate ruby lighthouse)
plugins=(git vi-mode brew osx)

source $ZSH/oh-my-zsh.sh

export SBT_OPTS="-Xss2m"
[[ -o login ]] && ssh-add -A

# Customize to your needs...
# SM [2017-10-25]: move /usr/local/bin before the path to override system installs in favor of homebrew installs
PATH=~/bin:/usr/local/bin:$PATH:/usr/local/sbin
bindkey "^[." insert-last-word

# developer aliases
alias kc=kubectl
alias kx=kubectx
alias cfgr=python3 -m configurender
export GOPATH=$HOME/dev/go

source ~/.zshrc_local

. ~/dev/share/azure-cli/az.completion

autoload -U +X bashcompinit && bashcompinit
complete -o nospace -C /usr/local/bin/terraform terraform
