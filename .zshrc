# fnm
eval "$(fnm env --use-on-cd)"
export PATH="/Users/kunalsharma/.cargo/bin:$PATH"
# >>> conda initialize >>>
# !! Contents within this block are managed by 'conda init' !!
__conda_setup="$('/opt/homebrew/Caskroom/miniconda/base/bin/conda' 'shell.zsh' 'hook' 2> /dev/null)"
if [ $? -eq 0 ]; then
    eval "$__conda_setup"
else
    if [ -f "/opt/homebrew/Caskroom/miniconda/base/etc/profile.d/conda.sh" ]; then
        . "/opt/homebrew/Caskroom/miniconda/base/etc/profile.d/conda.sh"
    else
        export PATH="/opt/homebrew/Caskroom/miniconda/base/bin:$PATH"
    fi
fi
unset __conda_setup
# <<< conda initialize <<<
# Disable conda prompt formatting
export CONDA_CHANGEPS1=false

# Starship 
eval "$(starship init zsh)"
export STARSHIP_CONFIG=~/.config/starship/starship.toml

# The following lines have been added by Docker Desktop to enable Docker CLI completions.
fpath=(/Users/kunalsharma/.docker/completions $fpath)
autoload -Uz compinit
compinit
# End of Docker CLI completions
eval "$(zoxide init zsh)"

function t() {
  {
    exec </dev/tty
    exec <&1
    local session
    session=$(sesh list -t -c | fzf --height 40% --reverse --border-label ' sesh ' --border --prompt '⚡  ')
    zle reset-prompt > /dev/null 2>&1 || true
    [[ -z "$session" ]] && return
    sesh connect $session
  }
}

