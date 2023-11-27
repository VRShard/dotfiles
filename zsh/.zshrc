# If you come from bash you might have to change your $PATH.
# export PATH=$HOME/bin:/usr/local/bin:$PATH

# Path to your oh-my-zsh installation.

# export ZSH="$HOME/.config/oh-my-zsh"
# export ZSH_COMPDUMP=$ZSH/cache/.zcompdump-$HOST
# HISTFILE=$ZDOTDIR/.zsh_history
# export LESSHISTFILE="$HOME/.local/less/history"

# Set name of the theme to load --- if set to "random", it will
# load a random theme each time oh-my-zsh is loaded, in which case,
# to know which specific one was loaded, run: echo $RANDOM_THEME
# See https://github.com/ohmyzsh/ohmyzsh/wiki/Themes
# ZSH_THEME="agnoster"
ZSH_THEME=""
DEFAULT_USER="viera"
# export npm_config_userconfig=$HOME/.config/npm/config
# export npm_config_cache=$HOME/.cache/npm
# export GOPATH=$HOME/.local/go
# export WORKON_HOME=$HOME/.local/virtualenvs
# export GRADLE_USER_HOME=$HOME/.cache/gradle
# export CARGO_HOME=$HOME/.local/cargo
# export RUSTUP_HOME=$HOME/.local/rustup
[ -f ~/.local/fzf/.fzf.zsh ] && source ~/.local/fzf/.fzf.zsh
# Set list of themes to pick from when loading at random
# Setting this variable when ZSH_THEME=random will cause zsh to load
# a theme from this variable instead of looking in ~/.oh-my-zsh/themes/
# If set to an empty array, this variable will have no effect.
# ZSH_THEME_RANDOM_CANDIDATES=( "robbyrussell" "agnoster" )

# Uncomment the following line to use case-sensitive completion.
# CASE_SENSITIVE="true"

# Uncomment the following line to use hyphen-insensitive completion.
# Case-sensitive completion must be off. _ and - will be interchangeable.
# HYPHEN_INSENSITIVE="true"

# Uncomment the following line to disable bi-weekly auto-update checks.
# DISABLE_AUTO_UPDATE="true"

# Uncomment the following line to automatically update without prompting.
# DISABLE_UPDATE_PROMPT="true"

# Uncomment the following line to change how often to auto-update (in days).
# export UPDATE_ZSH_DAYS=13

# Uncomment the following line if pasting URLs and other text is messed up.
# DISABLE_MAGIC_FUNCTIONS=true

# Uncomment the following line to disable colors in ls.
# DISABLE_LS_COLORS="true"

# Uncomment the following line to disable auto-setting terminal title.
# DISABLE_AUTO_TITLE="true"

# Uncomment the following line to enable command auto-correction.
# ENABLE_CORRECTION="true"

# Uncomment the following line to display red dots whilst waiting for completion.
# COMPLETION_WAITING_DOTS="true"

# Uncomment the following line if you want to disable marking untracked files
# under VCS as dirty. This makes repository status check for large repositories
# much, much faster.
# DISABLE_UNTRACKED_FILES_DIRTY="true"

# Uncomment the following line if you want to change the command execution time
# stamp shown in the history command output.
# You can set one of the optional three formats:
# "mm/dd/yyyy"|"dd.mm.yyyy"|"yyyy-mm-dd"
# or set a custom format using the strftime function format specifications,
# see 'man strftime' for details.
# HIST_STAMPS="mm/dd/yyyy"

# Would you like to use another custom folder than $ZSH/custom?
# ZSH_CUSTOM=/path/to/new-custom-folder

# Which plugins would you like to load?
# Standard plugins can be found in ~/.oh-my-zsh/plugins/*
# Custom plugins may be added to ~/.oh-my-zsh/custom/plugins/
# Example format: plugins=(rails git textmate ruby lighthouse)
# Add wisely, as too many plugins slow down shell startup.
plugins=(
    # zsh-vi-mode
    git 
    git-auto-fetch
    docker
    zsh-autosuggestions
    virtualenvwrapper
)
ZSH_AUTOSUGGEST_HIGHLIGHT_STYLE="fg=#808080"
source $ZSH/oh-my-zsh.sh

# User configuration
if [[ `uname` == Darwin ]]; then
    MAX_MEMORY_UNITS=KB
else
    MAX_MEMORY_UNITS=MB
fi

TIMEFMT='%J   %U  user %S system %P cpu %*E total'$'\n'\
'avg shared (code):         %X KB'$'\n'\
'avg unshared (data/stack): %D KB'$'\n'\
'total (sum):               %K KB'$'\n'\
'max memory:                %M '$MAX_MEMORY_UNITS''$'\n'\
'page faults from disk:     %F'$'\n'\
'other page faults:         %R'
# export MANPATH="/usr/local/man:$MANPATH"

# You may need to manually set your language environment
# export LANG=en_US.UTF-8

# Preferred editor for local and remote sessions
# if [[ -n $SSH_CONNECTION ]]; then
#   export EDITOR='vim'
# else
#   export EDITOR='mvim'
# fi

# Compilation flags
# export ARCHFLAGS="-arch x86_64"

# Set personal aliases, overriding those provided by oh-my-zsh libs,
# plugins, and themes. Aliases can be placed here, though oh-my-zsh
# users are encouraged to define aliases within the ZSH_CUSTOM folder.
# For a full list of active aliases, run `alias`.
#
# Example aliases
# alias zshconfig="mate ~/.config/zsh/.zshrc"
# alias ohmyzsh="mate ~/.oh-my-zsh"
alias ls="exa --icons --colour=always --group-directories-first"
alias f='fzf --height=30%'
alias fzf='fzf --height=90% --ansi --preview "bat --color=always --line-range :500 {}" --preview-window right,border-left  --padding=0'
alias nvv='f | xargs -r nvim'
alias screen='screen -c ~/.config/screenrc'
alias carche='RUSTC_WRAPPER="$(which sccache)" cargo'
# alias whereami="echo $(pwd)"
# Homebrew

# export PATH="$HOME/.local/rd/bin:$PATH"

#export PATH=/usr/local/bin:/usr/bin:/bin:/usr/sbin:/sbin:/usr/local/share/dotnet:~/.dotnet/tools:/Library/Frameworks/Mono.framework/Versions/Current/Commands
# export PATH="$PATH:$HOME/Projects/Git_Repos/Flutter/flutter/bin:$HOME/Projects/Git_Repos/depot_tools"
# export PATH="$PATH:$HOME/.local/bin"
#export PATH="/usr/local/opt/python/libexec/bin:$PATH"
# Virtual Environment Wrapper
VIRTUALENVWRAPPER_PYTHON=$HOME/.local/pipx/venvs/virtualenvwrapper/bin/python3
source $HOME/.local/bin/virtualenvwrapper.sh

#export ANDROID_HOME=$HOME/Library/Android/sdk
#export ANDROID_NDK_HOME=$HOME/Library/Android/sdk/ndk/20.1.5948944
#export NDK_HOME=$HOME/Library/Android/sdk/ndk/20.1.5948944

proxyon() {
    export http_proxy="http://127.0.0.1:1087"
    export https_proxy="http://127.0.0.1:1087"
    export all_proxy="socks5://127.0.0.1:1080"
    echo "proxy on"
}
proxyoff() {
    unset http_proxy
    unset https_proxy
    unset all_proxy
    echo "proxy off"
}

export EDITOR=nvim
eval "$(pyenv init -)"
eval "$(fnm env --use-on-cd)"
eval "$(starship init zsh)"
# Created by `pipx` on 2022-01-25 18:46:49
