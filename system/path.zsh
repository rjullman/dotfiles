# setup path and man path
local BREW_PREFIX=`brew --prefix`
export PATH="$BREW_PREFIX/bin:$BREW_PREFIX/Cellar/coreutils/8.24/libexec/gnubin:$ZSH:/usr/local/bin:/usr/bin:/bin:/usr/sbin:/sbin:$PATH"
export MANPATH="$BREW_PREFIX/Cellar/coreutils/8.24/libexec/gnuman:${MANPATH-/usr/share/man}"
