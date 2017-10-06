# setup path and man path
BREW_PREFIX="$(brew --prefix)"
BREW_PREFIX_COREUTILS="$BREW_PREFIX/opt/coreutils" # `brew --prefix coreutils` is too slow
export PATH="$BREW_PREFIX/bin:$BREW_PREFIX_COREUTILS/libexec/gnubin:$DOTFILES:/usr/local/bin:/usr/bin:/bin:/usr/sbin:/sbin:$PATH"
export MANPATH="$BREW_PREFIX_COREUTILS/libexec/gnuman:${MANPATH-/usr/share/man}"
