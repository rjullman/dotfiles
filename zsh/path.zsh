source $HOME/.zsh/antigen/antigen.zsh

# Load the oh-my-zsh's library.
antigen use oh-my-zsh

antigen bundles <<EOBUNDLES
  # Bundles from the default repo (robbyrussell's oh-my-zsh).
  git
  brew
  brew-cask
  osx

  # Syntax highlighting bundle.
  zsh-users/zsh-syntax-highlighting
EOBUNDLES

# Load the theme.
antigen theme agnoster

# Tell antigen that you're done.
antigen apply
