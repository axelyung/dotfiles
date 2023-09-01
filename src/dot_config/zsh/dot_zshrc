# history config
source ~/.config/zsh/history

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

#THIS MUST BE AT THE END OF THE FILE FOR SDKMAN TO WORK!!!
export SDKMAN_DIR="$HOME/.sdkman"
[[ -s "$HOME/.sdkman/bin/sdkman-init.sh" ]] && source "$HOME/.sdkman/bin/sdkman-init.sh"
