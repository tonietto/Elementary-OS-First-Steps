# spinner
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

# Aliases
alias futuremachina='ssh gus@159.203.225.215'
alias please='sudo'
alias sleep='xset dpms force off' # Ubuntu specific
alias alohaine="fortune | cowsay | lolcat"
# alias poweroff='gnome-session-quit --power-off' # Ubuntu specific

# Functions
show-version() {
  if [ ! -f package.json ]; then
      echo $fg[red]"package.json not found!"
  else
    PACKAGE_VERSION=$(cat package.json \
    | grep version \
    | head -1 \
    | awk -F: '{ print $2 }' \
    | sed 's/[",]//g' \
    | tr -d '[[:space:]]')

    PACKAGE_NAME=$(cat package.json \
    | grep name \
    | head -1 \
    | awk -F: '{ print $2 }' \
    | sed 's/[",]//g' \
    | tr -d '[[:space:]]')

    printf "\033[36m%s\033[0m \033[90m%s\033[0m\n" $PACKAGE_NAME "$PACKAGE_VERSION"
  fi
}

# nodengine
cd () { builtin cd "$@" && chpwd; }
pushd () { builtin pushd "$@" && chpwd; }
popd () { builtin popd "$@" && chpwd; }

#The Fuck
eval "$(thefuck --alias)"

chpwd () {
  local PKG
  
  PKG=$PWD/package.json
    if [ -f "$PKG" ] && [ "$NODENGINE_LAST_DIR" != "$PWD" ]; then
      show-version
      nodengine
      printf "\033[36m%s\033[0m \033[90m%s\033[0m\n" "node" "$(node --version)"
      NODENGINE_LAST_DIR=$PWD
    fi
}

export N_PREFIX="$HOME/n"; [[ :$PATH: == *":$N_PREFIX/bin:"* ]] || PATH+=":$N_PREFIX/bin"  # Added by n-install (see http://git.io/n-install-repo).

# spinner
revolver stop
