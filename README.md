# Dotfiles

My custom dotfiles setup. I use the following tools:

- [`ghostty`](https://ghostty.org/) - terminal emulator
- [`nushell`](https://www.nushell.sh/) - shell
- [`starhip`](https://starship.rs/) - terminal prompt
- [`zellij`](https://zellij.dev/) - terminal workspace
- [`jujutsu`](https://jj-vcs.github.io/jj/latest/) - version control system
- [`zoxide`](https://github.com/ajeetdsouza/zoxide) - smarter `cd` command
- [`neovim`](https://neovim.io/) - editor. Neovim config is located in a [separate repository](https://github.com/viddrobnic/init.lua).
- [`zed`](https://zed.dev/) - backup editor

## Getting started

> [!WARNING]
> The commands are in nushell and are not POSIX compliant

1. Clone this repository to a location of your liking. Personally I use `~/.dotfiles`.
2. Bootstrap nushell

   ```nushell
   let completions_dir = $"($nu.data-dir)/completions"
   mkdir $completions_dir

   jj util completion nushell | save -f $"($completions_dir)/completions-jj.nu"

   http get "https://raw.githubusercontent.com/nushell/nu_scripts/refs/heads/main/custom-completions/npm/npm-completions.nu" | save -f $"($completions_dir)/npm-completions.nu"
   http get "https://raw.githubusercontent.com/nushell/nu_scripts/refs/heads/main/custom-completions/docker/docker-completions.nu" | save -f $"($completions_dir)/docker-completions.nu"

   zoxide init --cmd cd nushell | save -f ~/.zoxide.nu
   ```

3. Link the files to correct places. If you cloned the repository to `~/.dotfiles` you can use the following
   script, otherwise execute the linking manually.

   ```nushell
   mkdir  ~/.config/ghostty
   ln -s ~/.dotfiles/ghostty/config ~/.config/ghostty/config

   ln -s ~/.dotfiles/nushell/config.nu $nu.config-path
   ln -s ~/.dotfiles/starship/starship.toml ~/.config/starship.toml
   ln -s ~/.dotfiles/zellij ~/.config/zellij

   mkdir ~/.config/zed
   ln ~/.dotfiles/zed/settings.json ~/.config/zed/settings.json
   ln ~/.dotfiles/zed/keymap.json ~/.config/zed/keymap.json

   ln -s ~/.dotfiles/git/.gitconfig ~/.gitconfig
   ln -s ~/.dotfiles/jj/config.toml (jj config path --user)
   ```

## More Tools

Here are some more tools that I use, but don't need any configuration:

> [!NOTE]
> On my TODO there is a "learn nix" item. It should make all of this mess nicer.

- [`ouch`](https://github.com/ouch-org/ouch) - painless(de)compression
- [`tokei`](https://github.com/XAMPPRocky/tokei) - count lines of code
- [`btop`](https://github.com/aristocratos/btop) - resource monitor
