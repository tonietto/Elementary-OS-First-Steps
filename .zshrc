# start spinner
revolver --style 'simpleDots' start

# Path to your oh-my-zsh installation.
export ZSH=~/.oh-my-zsh

source ~/antigen.zsh

# Load the oh-my-zsh's library.
antigen use oh-my-zsh

# Bundles from the default repo (robbyrussell's oh-my-zsh).
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
EOBUNDLES

# Syntax highlighting bundle.
antigen bundle zsh-users/zsh-syntax-highlighting

# Load the theme.
# antigen theme fwalch
antigen bundle tonietto/purity

# Tell antigen that you're done.
antigen apply

# User configuration
export PATH="/usr/local/heroku/bin:/Library/Frameworks/Python.framework/Versions/3.4/bin:/usr/local/bin:/usr/bin:/bin:/usr/sbin:/sbin"

# Aliases
alias futuremachina='ssh gus@159.203.225.215'
alias please='sudo'
alias poweroff='gnome-session-quit --power-off' # Ubuntu specific
alias sleep='xset dpms force off' # Ubuntu specific

# nodengine
cd () { builtin cd "$@" && chpwd; }
pushd () { builtin pushd "$@" && chpwd; }
popd () { builtin popd "$@" && chpwd; }

#The Fuck
eval "$(thefuck --alias)"

export N_PREFIX="$HOME/n"; [[ :$PATH: == *":$N_PREFIX/bin:"* ]] || PATH+=":$N_PREFIX/bin"  # Added by n-install (see http://git.io/n-install-repo).

# stop spinner
revolver stop
