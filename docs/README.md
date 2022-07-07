# `dotfiles`

- oh-my-zsh
- kakoune
- nvm

## Setup
```bash
xcode-select --install

sudo rm -rf /usr/local/Homebrew
sh -c "$(curl -fsSL https://raw.githubusercontent.com/Homebrew/install/HEAD/install.sh)"
brew install git pass kakoune

sh -c "$(curl -fsSL https://raw.githubusercontent.com/robbyrussell/oh-my-zsh/master/tools/install.sh)"
git clone https://github.com/zsh-users/zsh-syntax-highlighting.git ${ZSH_CUSTOM:-~/.oh-my-zsh/custom}/plugins/zsh-syntax-highlighting

mkdir -p "$HOME/.config/kak/plugins"
git clone https://github.com/andreyorst/plug.kak.git $HOME/.config/kak/plugins/plug.kak
DOTF="$HOME/src/0x5424/dotfiles" && mkdir -p "$DOTF" && git clone https://github.com/0x5424/dotfiles.git "$DOTF" && cd "$DOTF"
zsh ./macos.sh
```

symlinks
```bash
# Assume PWD is source code of this repo
ln -s "$PWD/zshrc" "$HOME/.zshrc"
ln -s "$PWD/gitconfig" "$HOME/.gitconfig"
ln -s "$PWD/gitignore" "$HOME/.gitignore"

ln -s "$PWD/kakrc" "$HOME/.config/kak/kakrc"
ln -s "$PWD/aliases.zsh" "$HOME/.oh-my-zsh/custom/aliases.zsh"
```

### Node.js

```bash
git clone https://github.com/nvm-sh/nvm.git "$HOME/.nvm"
cd ~/.nvm && gco v0.39.1

# After restarting the shell
nvm install "$(cat .nvmrc)" && nvm alias default node
```

