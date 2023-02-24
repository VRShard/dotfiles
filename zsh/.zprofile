export ZSH="$HOME/.config/oh-my-zsh"
export ZSH_COMPDUMP=$ZSH/cache/.zcompdump-$HOST
HISTFILE=$ZDOTDIR/.zsh_history
export LESSHISTFILE="$HOME/.local/less/history"

eval "$(/opt/homebrew/bin/brew shellenv)"
export PYENV_ROOT=$HOME/.local/pyenv
eval "$(pyenv init --path)"

# Created by `pipx` on 2022-01-25 18:46:49
export PATH="$PATH:$HOME/.local/bin"
# export XDG_CONFIG_HOME="${XDG_CONFIG_HOME:-$HOME/.config}"
export SHELL_SESSION_DIR=$ZDOTDIR/sessions
export SHELL_SESSION_FILE=$SHELL_SESSION_DIR/$TERM_SESSION_ID

export DOTNET_CLI_TELEMETRY_OPTOUT=1
