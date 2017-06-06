# spinner
revolver --style 'simpleDots' start

# Path to your oh-my-zsh installation.
export ZSH=~/.oh-my-zsh

source ~/antigen.zsh

# Load the oh-my-zsh's library.
antigen use oh-my-zsh

# Bundles 
antigen bundles <<EOBUNDLES
  rupa/z
  git
  git-extras
  git-flow-avh
  laravel
  laravel5
  composer
  heroku
  npm
  node
  meteor
  command-not-found
  supercrabtree/k
  zsh-users/zsh-autosuggestions
  history-substring-search
  zsh-users/zsh-syntax-highlighting
  desyncr/vagrant-zsh-completion
  felixr/docker-zsh-completion
  git-flow
  unixorn/autoupdate-antigen.zshplugin
  ubuntu
  djui/alias-tips
  colorize
  emoji
  sublime
  thefuck
  web-search
  tonietto/show-version
  tonietto/aliases
EOBUNDLES

# Syntax highlighting bundle.
antigen bundle zsh-users/zsh-syntax-highlighting

# Load the theme.
# antigen theme fwalch
antigen bundle tonietto/purity

# Tell antigen that you're done.
antigen apply

# User configuration
export PATH="/usr/local/heroku/bin:/Library/Frameworks/Python.framework/Versions/3.4/bin:/usr/local/bin:/usr/bin:/bin:/usr/sbin:/sbin:/bin:/usr/games"

# nodengine and show-version
cd () { builtin cd "$@" && chpwd; }
pushd () { builtin pushd "$@" && chpwd; }
popd () { builtin popd "$@" && chpwd; }

chpwd () {
  local PKG

  PKG=$PWD/package.json
  if [ -f "$PKG" ] && [ "$NODENGINE_LAST_DIR" != "$PWD" ]; then
    nodengine
    show-version
    printf "\033[36m%s\033[0m \033[90m%s\033[0m\n" "nodengine" "$(node --version)"
    NODENGINE_LAST_DIR=$PWD
  fi
}

#The Fuck
eval "$(thefuck --alias)"

export N_PREFIX="$HOME/n"; [[ :$PATH: == *":$N_PREFIX/bin:"* ]] || PATH+=":$N_PREFIX/bin"  # Added by n-install (see http://git.io/n-install-repo).

# spinner
revolver stop
