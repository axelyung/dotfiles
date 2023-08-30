export EDITOR=nvim
export VISUAL=nvim
export TERMINAL=alacritty

export DOTFILES="$HOME/repos/dotfiles"

export XDG_CONFIG_DIR="$HOME/.config"
export XDG_CONFIG_DIRS="$XDG_CONFIG_DIRS:$XDG_CONFIG_DIR"
export XDG_DATA_DIR="$HOME/.local/share"
export XDG_DOWNLOAD_DIR="$HOME/downloads"
export XDG_PICTURES_DIR="$HOME/pictures"

export BAT_THEME=Nord

export TASKRC="${XDG_CONFIG_DIR}/taskwarrior/taskrc"
export TASKDATA="${XDG_DATA_DIR}/taskwarrior"

export STARSHIP_CONFIG="${XDG_CONFIG_DIR}/starship/starship.toml"

export FZF_DEFAULT_COMMAND="fd --type file --follow --hidden --exclude .git --color=always --no-ignore-vcs"
export FZF_DEFAULT_OPTS="--ansi"

export RIPGREP_CONFIG_PATH="${XDG_CONFIG_DIR}/ripgrep/ripgreprc"

export PNPM_HOME="/home/axelyung/.local/share/pnpm"
export PATH="$PNPM_HOME:$PATH"

. "$HOME/.cargo/env"

# include local env file
if [[ -f ~/.zshenv.local ]]; then
	source ~/.zshenv.local
fi
