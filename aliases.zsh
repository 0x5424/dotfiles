SOURCE_CODE_DIR="$HOME/src"
export DOTFILES_DIR="$SOURCE_CODE_DIR/0x5424/dotfiles"

# Quick-nav
alias dotf="cd $DOTFILES_DIR"

# Ripped from gitfast
alias gst="git status"
alias gco="git checkout"

# Ripped from common-aliases
alias l='ls -lFh'     #size,show type,human readable
alias la='ls -lAFh'   #long list,show almost all,show type,human readable
alias ll='ls -l'      #long list
# alias lr='ls -tRFh'   #sorted by date,recursive,show type,human readable
# alias lt='ls -ltFh'   #long list,sorted by date,show type,human readable
alias grep='grep --color'
alias sgrep='grep -R -n -H -C 5 --exclude-dir={.git,.svn,CVS} '
alias t='tail -f'
alias ff='find . -type f -name'
# alias rm='rm -i'
alias cp='cp -i'
alias mv='mv -i'
