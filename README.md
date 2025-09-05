# Dotfiles

My dotfiles setup. This repository doesn't include configuration for
neovim, which is located in a [separate repository](https://github.com/viddrobnic/init.lua).

## Getting started

1. Install the dependencies with whatever package manager you like:

```
ghostty starship jujutsu zoxide neovim ripgrep fzf bat eza ouch tokei btop
```

2. Clone this repository to a location of your liking. Personally I use `~/.dotfiles`.
3. Install zsh dependencies
   ```zsh
   mkdir -p ~/.zsh
   git clone https://github.com/zsh-users/zsh-autosuggestions ~/.zsh/zsh-autosuggestions
   git clone https://github.com/zsh-users/zsh-syntax-highlighting.git ~/.zsh/zsh-syntax-highlighting
   ```
4. Link the files to correct places. If you cloned the repository to `~/.dotfiles` you can use the following
   script, otherwise execute the linking manually.

   ```zsh
   mkdir -p ~/.config/ghostty
   ln -s ~/.dotfiles/ghostty/config ~/.config/ghostty/config

   mkdir -p ~/.zsh
   ln -s ~/.dotfiles/zsh/zshrc ~/.zshrc
   ln -s ~/.dotfiles/zsh/completion.zsh ~/.zsh/completion.zsh

   ln -s ~/.dotfiles/starship/starship.toml ~/.config/starship.toml

   ln -s ~/.dotfiles/tmux/tmux.conf ~/.tmux.conf

   ln -s ~/.dotfiles/git/.gitconfig ~/.gitconfig
   ln -s ~/.dotfiles/jj/config.toml $(jj config path --user)
   ```
