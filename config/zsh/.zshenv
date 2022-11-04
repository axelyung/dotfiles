export EDITOR=vi
export VISUAL=nvim

XDG_CONFIG_DIR="${HOME}/.config"
XDG_DATA_DIR="${HOME}/.local/share"

export XDG_CONFIG_DIRS="$XDG_CONFIG_DIRS:$XDG_CONFIG_DIR"

export SSH_KEY_PATH="~/.ssh/id_ed25519"

export TASKRC="${XDG_CONFIG_DIR}/taskwarrior/taskrc"
export TASKDATA="${XDG_DATA_DIR}/taskwarrior"

export STARSHIP_CONFIG="${XDG_CONFIG_DIR}/starship/starship.toml"

export FZF_DEFAULT_COMMAND="fd --type file --follow --hidden --exclude .git --color=always"
export FZF_DEFAULT_OPTS="--ansi"

export DOTFILES="${HOME}/Code/dotfiles"

source "$HOME/.cargo/env"
