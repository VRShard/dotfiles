export ZSH="$HOME/.config/oh-my-zsh"
export ZSH_COMPDUMP=$ZSH/cache/.zcompdump-$HOST
export HISTFILE=$ZDOTDIR/.zsh_history
export LESSHISTFILE="$HOME/.local/less/history"

# eval "$(/opt/homebrew/bin/brew shellenv)"
export PYENV_ROOT=$HOME/.local/pyenv
eval "$(pyenv init --path)"

# Created by `pipx` on 2022-01-25 18:46:49
export PATH="$PATH:$HOME/.local/bin"
# export XDG_CONFIG_HOME="${XDG_CONFIG_HOME:-$HOME/.config}"
export SHELL_SESSION_DIR=$ZDOTDIR/sessions
export SHELL_SESSION_FILE=$SHELL_SESSION_DIR/$TERM_SESSION_ID

export DOTNET_CLI_TELEMETRY_OPTOUT=1
export QT_QPA_PLATFORMTHEME=qt5ct
export GTK_IM_MODULE=fcitx
export QT_IM_MODULE=fcitx
export XMODIFIERS=@im=fcitx
export KUBECACHEDIR=$HOME/.cache/kubecache
#
# ssh-agent configuration
#
if [ -z "$(pgrep ssh-agent)" ]; then
    rm -rf /tmp/ssh-* > /dev/null 2>&1
    eval "$(DISPLAY=:1 SSH_ASKPASS=/usr/bin/ksshaskpass ssh-agent)" > /dev/null
else
    export SSH_AGENT_PID=$(pgrep ssh-agent)
    export SSH_AUTH_SOCK=$(find /tmp/ssh-* -name "agent.*")
fi

