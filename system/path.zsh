# setup path and man path
export PATH="$(brew --prefix)/bin:$(brew --prefix coreutils)/libexec/gnubin:$ZSH:/usr/local/bin:/usr/bin:/bin:/usr/sbin:/sbin:$PATH"
export MANPATH="$(brew --prefix coreutils)/libexec/gnuman:${MANPATH-/usr/share/man}"
