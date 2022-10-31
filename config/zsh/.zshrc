# oh-my-zsh config
source ~/.config/zsh/ohmyzsh

# aliases
source ~/.config/zsh/aliases

# everything else
source ~/.config/zsh/misc

# include local rc file
if [[ -f ~/.zshrc.local ]]; then
	source ~/.zshrc.local
fi

# starship
eval "$(starship init zsh)"
