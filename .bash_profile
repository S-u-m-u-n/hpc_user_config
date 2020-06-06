# .bash_profile

# Get the aliases and functions
if [ -f ~/.bashrc ]; then
        . ~/.bashrc
fi

# Location of zsh. Adapt as necessary
export ZSH_LOC=/cm/shared/spack/opt/spack/linux-centos7-zen2/gcc-9.3.0/zsh-5.4.2-fozawt7d3xzzuzqe2g44kxj6lfnelgdp/bin/zsh
if [ "$SHELL" != "$ZSH_LOC" ]
then
  export SHELL="$ZSH_LOC"
  exec /usr/local/bin/zsh -l    # -l: login shell again
fi

# User specific environment and startup programs
