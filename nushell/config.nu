# config.nu
#
# Installed by:
# version = "0.102.0"

# Disable banner
$env.config.show_banner = false

# Set theme
source $"($nu.data-dir)/themes/catppuccin_frappe.nu"

# Setup path
$env.path ++= [
  "/opt/homebrew/bin",
  $"($env.home)/.cargo/bin",
  $"($env.home)/go/bin",
  $"($env.home)/.zig",
  "/usr/local/go/bin",
]

# Setup editor mode
$env.config.edit_mode = "vi"
$env.config.buffer_editor = "nvim"

# Common aliases
alias vim = nvim
alias lg = lazygit

# Autocomplete settings
$env.config.completions.algorithm = "fuzzy"
const completions_dir = $"($nu.data-dir)/completions"
mkdir $completions_dir

jj util completion nushell | save -f $"($completions_dir)/completions-jj.nu" 

source $"($completions_dir)/completions-jj.nu"
source $"($completions_dir)/git-completions.nu"
source $"($completions_dir)/npm-completions.nu"
source $"($completions_dir)/docker-completions.nu"

# Setup starship
$env.PROMPT_INDICATOR_VI_INSERT = ""
$env.PROMPT_INDICATOR_VI_NORMAL = ": "

mkdir ($nu.data-dir | path join "vendor/autoload")
starship init nu | save -f ($nu.data-dir | path join "vendor/autoload/starship.nu")

# Setup starship
def start_zellij [] {
    if 'ZELLIJ' not-in ($env | columns) {
      if 'ZELLIJ_AUTO_ATTACH' in ($env | columns) and $env.ZELLIJ_AUTO_ATTACH == 'true' {
        zellij attach -c
      } else {
        zellij
      }

      if 'ZELLIJ_AUTO_EXIT' in ($env | columns) and $env.ZELLIJ_AUTO_EXIT == 'true' {
        exit
      }
    }
}

start_zellij
