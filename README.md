# Dotfiles

My custom dotfiles setup. I use the following tools:

- `ghostty` - terminal emulator
- `zsh`
- `nushell` - maybe replacing zsh (testing phase)
- `starhip` - terminal prompt
- `zellij` - terminal workspace
- `atuin` - magical shell history
- `zed` - editor
- `neovim` - editor. Neovim config is located in a [separate repository](https://github.com/viddrobnic/init.lua).

## Getting started

1. Clone this repository to a location of your liking. Personally I use `~/.dotfiles`.
2. Install zsh dependencies with:
   ```sh
   mkdir -p ~/.zsh
   git clone https://github.com/zsh-users/zsh-autosuggestions ~/.zsh/zsh-autosuggestions
   git clone https://github.com/zsh-users/zsh-syntax-highlighting.git ~/.zsh/zsh-syntax-highlighting
   ```
3. Link the files to correct places. If you cloned the repository to `~/.dotfiles` you can use the following
   script, otherwise execute the linking manually.

   ```sh
   mkdir -p ~/.config/ghostty
   ln -s ~/.dotfiles/ghostty/config ~/.config/ghostty/config

   mkdir -p ~/.zsh
   ln -s ~/.dotfiles/zsh/zshrc ~/.zshrc
   ln -s ~/.dotfiles/zsh/completion.zsh ~/.zsh/completion.zsh

   ln -s ~/.dotfiles/starship/starship.toml ~/.config/starship.toml

   ln -s ~/.dotfiles/zellij ~/.config/zellij

   mkdir -p ~/.config/atuin
   ln -sf ~/.dotfiles/atuin/config.toml ~/.config/atuin/config.toml

   mkdir -p ~/.config/zed
   ln -s ~/.dotfiles/zed/settings.json ~/.config/zed/settings.json
   ln -s ~/.dotfiles/zed/keymap.json ~/.config/zed/keymap.json

   ln -s ~/.dotfiles/git/.gitconfig ~/.gitconfig
   ```

## Known Issues

- Some TUIs (like `kitten themes`) might misbehave. Try running them in zellij's locked mode (<kbd>Ctrl</kbd> + <kbd>g</kbd>).
  If it still doesn't work, run the command outside of zellij.
- If you have neovim open and resize the terminal window, stuff might get rendered weird. For now the fix is to restart neovim...

## Testing Nushell

I am currently testing out nushell. Config is available in `nushell/config.nu`, but there are no instructions yet on how to
get it set up.
