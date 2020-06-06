# Path to your oh-my-zsh installation.
export ZSH="$HOME/.oh-my-zsh"
export PATH="$HOME/apps:$PATH"
export TERM=xterm-256color # this line solves kitty-related terminal problems (e.g not being able to open htop)

autoload -U compinit
compinit

alias vi='nvim'
alias tmux='tmux -2'

source /cm/shared/spack-new/share/spack/setup-env.sh
spack load neovim
spack load tmux
module load slurm
umask ug=rwx,o=rx

# See https://github.com/ohmyzsh/ohmyzsh/wiki/Themes
ZSH_THEME="robbyrussell"

# Plugins
plugins=(scd zsh-autosuggestions)

source $ZSH/oh-my-zsh.sh
