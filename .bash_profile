# .bash_profile

# Get the aliases and functions
if [ -f ~/.bashrc ]; then
        . ~/.bashrc
fi

# Location of zsh. Adapt as necessary
export ZSH_LOC=/usr/local/bin/zsh
if [ "$SHELL" != "$ZSH_LOC" ]
then
  export SHELL="$ZSH_LOC"
  exec /usr/local/bin/zsh -l    # -l: login shell again
fi

# User specific environment and startup programs
