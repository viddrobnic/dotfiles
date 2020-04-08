# Dotfiles
Our custom dotfiles.

## Sway 
### Required packages:
```
sway swayidle swaylock grim ffmpeg swaylock-blur wofi waybar ttf-roboto ttf-roboto-mono alsa gnome-terminal dmenu wl-clipboard grim slurp mako light ttf-font-awesome
```


### Config
Config should be linked as (links are written as `path/on/your/machine` -> `path/in/this/repo`):
- `~/.config/sway` -> `sway/`
- `~/.config/swaylock` -> `swaylock/`
- `~/.config/waybar` -> `waybar/`
- `~/.config/wofi` -> `wofi/`


### Wallpaper
Wallpaper should be present at `~/Pictures/wallpaper.jpg`.

### Fixing JAVA GUI
For most Java GUIs (JetBrains tools etc.) to work, add `_JAVA_AWT_WM_NONREPARENTING=1` to `/etc/environment`.

### Firefox
For Firefox to use wayland, add
`MOZ_ENABLE_WAYLAND=1` to `/etc/environment`.

## Termite
We are using `termite` as our terminal and it should be installed if using our sway config.

### Config
Our termite config should be linked as
`~/.config/termite` -> `termite/`.

### Theme
Our config is using the one dark theme, sourced from [here](https://github.com/ynj0/onedark-termite).

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

## Neovim
We are using [vim-plug](https://github.com/junegunn/vim-plug) plugin manager.

### Config
Config should be linked as `~/.config/nvim/init.vim` -> `nvim/init.vim`.

After linking the config, run `:PlugInstall` command in nvim to install the packages and reopen nvim.
