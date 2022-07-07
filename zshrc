# Load brew (Apple silicon only)
eval $(/opt/homebrew/bin/brew shellenv)

# Init non-path vars
export LANG=en_US.UTF-8
export LC_ALL=$LANG
export EDITOR="kak"
# export BUNDLER_EDITOR="kak -e filetree"

export GPG_TTY=`tty`

# Start oh-my-zsh
ZSH=$HOME/.oh-my-zsh
ZSH_THEME='minimal'
plugins=(pass zsh-syntax-highlighting)
source "$ZSH/oh-my-zsh.sh"

# Node.js
export NVM_DIR="$HOME/.nvm"
[ -s "$NVM_DIR/nvm.sh" ] && \. "$NVM_DIR/nvm.sh"  # This loads nvm

# Ruby
# export PATH="${HOME}/.rbenv/bin:${PATH}"
# type -a rbenv > /dev/null && eval "$(rbenv init -)"

# Python
# export PATH="$HOME/.pyenv/bin:$PATH"
# eval "$(pyenv init --path)"
# type -a pyenv > /dev/null && eval "$(pyenv init -)"

# Lastly, add current dir to PATH (after ohmyzsh)
export PATH="./node_modules/.bin:$PATH"
export PATH="./bin:$PATH"
