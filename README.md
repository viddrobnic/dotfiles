# Dotfiles
My custom dotfiles derived from the dotfiles we use at [zerodays](https://zerodays.dev). The original 
repo can be found [here](https://github.com/zerodays/dotfiles)

## ZSH
We are using [Oh My ZSH](https://ohmyz.sh/) to manage plugins and themes for ZSH.

### Dependencies
Required packages:
```
python-pygments fzf powerline-fonts
```

There are also using some external plugins, that you need to install manually.
The following commands should be executed in zsh shell with oh-my-zsh loaded, so that you have access to the `ZSH_CUSTOM` environment variable.
- [zsh-autosuggestions](https://github.com/zsh-users/zsh-autosuggestions)
    ```shell
    git clone https://github.com/zsh-users/zsh-autosuggestions ${ZSH_CUSTOM:-~/.oh-my-zsh/custom}/plugins/zsh-autosuggestions
    ```
- [zsh-syntax-highlighting](https://github.com/zsh-users/zsh-syntax-highlighting)
    ```shell
    git clone https://github.com/zsh-users/zsh-syntax-highlighting.git ${ZSH_CUSTOM:-~/.oh-my-zsh/custom}/plugins/zsh-syntax-highlighting
    ```

### Installing config file
Link `~/.zshrc` -> `zsh/.zshrc`.

## Starship
Starship terminal prompt is used instead of the default.

### Config
Config should be linked as `~/.config/starship.toml -> starship/starship.toml`.

## Neovim
We are using [vim-plug](https://github.com/junegunn/vim-plug) plugin manager.

### Config
Config should be linked as `~/.config/nvim/init.vim` -> `nvim/init.vim`.

After linking the config, run `:PlugInstall` command in nvim to install the packages and reopen nvim.
