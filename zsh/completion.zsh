# General
zmodload zsh/complist

# Vim style navigation for completion menu
bindkey -M menuselect 'h' vi-backward-char 'k' vi-up-line-or-history 'j' vi-down-line-or-history 'l' vi-forward-char

# Initialize completion system
autoload -U compinit; compinit
_comp_options+=(globdots) # With hidden files

# Options
setopt GLOB_COMPLETE        # Show autocompletion menu with globs
setopt MENU_COMPLETE        # Automatically highlight first element of completion menu
setopt AUTO_LIST            # Automatically list choices on ambiguous completion.
setopt COMPLETE_IN_WORD     # Complete from both ends of a word.

# Define completers
zstyle ':completion:*' completer _complete _approximate  # Standard and fuzzy completion
zstyle ':completion:*' keep-prefix true

# Use cache
zstyle ':completion:*' use-cache on
zstyle ':completion:*' cache-path "~/.zsh/.zcompcache"
zstyle ':completion:*' rehash true                      # Auto-update completions for new commands

# Allow you to select in a menu
zstyle ':completion:*' menu select                      # Interactive menu selection
zstyle ':completion:*' complete-options true            # Complete command options
 
zstyle ':completion:*' list-colors ${(s.:.)LS_COLORS}   # Use LS_COLORS for file/directory colors

# See ZSHCOMPWID "completion matching control"
zstyle ':completion:*' matcher-list '' 'm:{a-zA-Z}={A-Za-z}' 'r:|[._-]=* r:|=*' 'l:|=* r:|=*'

# Colorful completion formats
zstyle ':completion:*:*:*:*:corrections' format '%F{yellow}!- %d (errors: %e) -!%f'
zstyle ':completion:*:*:*:*:descriptions' format '%F{blue}-- %d --%f'
zstyle ':completion:*:*:*:*:messages' format '%F{magenta} -- %d --%f'
zstyle ':completion:*:*:*:*:warnings' format '%F{red}-- no matches found --%f'

# Ensure cache directory exists
[[ -d ~/.zsh/.zcompcache ]] || mkdir -p ~/.zsh/.zcompcache
