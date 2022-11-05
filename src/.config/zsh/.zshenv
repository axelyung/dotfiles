export EDITOR=nvim
export VISUAL=nvim

export XDG_CONFIG_DIR="${HOME}/.config"
export XDG_CONFIG_DIRS="$XDG_CONFIG_DIRS:$XDG_CONFIG_DIR"
export XDG_DATA_DIR="${HOME}/.local/share"

export TASKRC="${XDG_CONFIG_DIR}/taskwarrior/taskrc"
export TASKDATA="${XDG_DATA_DIR}/taskwarrior"

export STARSHIP_CONFIG="${XDG_CONFIG_DIR}/starship/starship.toml"

export FZF_DEFAULT_COMMAND="fd --type file --follow --hidden --exclude .git --color=always"
export FZF_DEFAULT_OPTS="--ansi"

export DOTFILES="${HOME}/Code/dotfiles"

