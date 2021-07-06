# If you come from bash you might have to change your $PATH.
# export PATH=$HOME/bin:/usr/local/bin:$PATH

# Path to your oh-my-zsh installation.
export ZSH=$HOME/.oh-my-zsh

# Set name of the theme to load --- if set to "random", it will
# load a random theme each time oh-my-zsh is loaded, in which case,
# to know which specific one was loaded, run: echo $RANDOM_THEME
# See https://github.com/robbyrussell/oh-my-zsh/wiki/Themes
POWERLEVEL9K_LEFT_PROMPT_ELEMENTS=(os_icon root_indicator dir vcs)
POWERLEVEL9K_RIGHT_PROMPT_ELEMENTS=(status time)
POWERLEVEL9K_STATUS_CROSS=true
POWERLEVEL9K_MODE=nerdfont-complete
POWERLEVEL9K_SHORTEN_DIR_LENGTH=2
POWERLEVEL9K_LEFT_SEGMENT_SEPARATOR=$''
POWERLEVEL9K_RIGHT_SEGMENT_SEPARATOR=$''
# POWERLEVEL9K_CONTEXT_DEFAULT_FOREGROUND="black"
# POWERLEVEL9K_CONTEXT_DEFAULT_BACKGROUND="white"
POWERLEVEL9K_SHORTEN_STRATEGY=truncate_left
ZSH_THEME="powerlevel10k/powerlevel10k"

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
# DISABLE_MAGIC_FUNCTIONS="true"

# Uncomment the following line to disable colors in ls.
# DISABLE_LS_COLORS="true"

# Uncomment the following line to disable auto-setting terminal title.
# DISABLE_AUTO_TITLE="true"

# Uncomment the following line to enable command auto-correction.
# ENABLE_CORRECTION="true"

# Uncomment the following line to display red dots whilst waiting for completion.
# Caution: this setting can cause issues with multiline prompts (zsh 5.7.1 and newer seem to work)
# See https://github.com/ohmyzsh/ohmyzsh/issues/5765
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
  docker
  git
  zsh-autosuggestions
  autojump
 # zsh-syntax-highlighting
)

source $ZSH/oh-my-zsh.sh
# [ -f /usr/local/etc/profile.d/autojump.sh ] && . /usr/local/etc/profile.d/autojump.sh
# [[ -s ~/.autojump/etc/profile.d/autojump.sh ]] && . ~/.autojump/etc/profile.d/autojump.sh

# User configuration

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

# ssh
# export SSH_KEY_PATH="~/.ssh/rsa_id"

# Set personal aliases, overriding those provided by oh-my-zsh libs,
# plugins, and themes. Aliases can be placed here, though oh-my-zsh
# users are encouraged to define aliases within the ZSH_CUSTOM folder.
# For a full list of active aliases, run `alias`.
#
# Example aliases
# alias zshconfig="mate ~/.zshrc"
# alias ohmyzsh="mate ~/.oh-my-zsh"
alias colortest="curl -s https://gist.githubusercontent.com/HaleTom/89ffe32783f89f403bba96bd7bcd1263/raw/ | bash"

# Bypass firewall in network-poverty areas (Mainland CN)
# Do change the proxy ports according to your own configurations
alias fuckgfw="export http_proxy=127.0.0.1:8001 https_proxy=127.0.0.1:8001 && echo '> You are out!'"
alias unfuckgfw="unset http_proxy https_proxy && echo '> Welcome inside ;)'"

# Jump straight to my Code folder and say something cute via cowsay
# Do change $PATH_TO_YOUR_CODE according to your own configurations
# Refer to README for installations of cowsay and fortune
alias gocode="cd $HOME/$PATH_TO_YOUR_CODE && fortune | cowsay"

# Config .zshrc via world's greatest text editor VIM!
# And then reload the configurations
alias tweakzsh="vim $HOME/.zshrc"
alias reload="source $HOME/.zshrc && echo '>> OH MY, ZSH configurations are reloaded!'"

# Update all packages via Homebrew (If you use a Mac)
alias buu="brew update && brew upgrade"

# Update all packages via apt (Ubuntu/Debian)
alias auu="sudo apt update && sudo apt upgrade -y"

# Update all packages via pacman (Arch Linux/Manjaro)
alias puu="sudo pacman -Syu"

# SSH to remote server
# Change $PATH_TO_KEY and $SERVER_IP according to your configurations
# For example: alias sshaws="ssh -i ~/.ssh/rsa_id ubuntu@x.x.x.x"
alias sshsvr="ssh -i $PATH_TO_KEY $SERVER_IP"

# Check current ip (When running `fuckgfw` you want to know whether you are out or not.)
alias whatsmyip="curl -L tool.lu/ip"

# Gnome desktop environments: open folder like you do on a Mac
alias open="nautilus"

# Login to mySQL server
alias loginmysql="mysql -u root -p"

# nvm
export NVM_DIR="$HOME/.nvm"
[ -s "$NVM_DIR/nvm.sh" ] && \. "$NVM_DIR/nvm.sh"  # This loads nvm
[ -s "$NVM_DIR/bash_completion" ] && \. "$NVM_DIR/bash_completion"  # This loads nvm bash_completion

# prompt_context() {
#  if [[ "$USER" != "$DEFAULT_USER" || -n "$SSH_CLIENT" ]]; then
#    prompt_segment black default "%(!.%{%F{yellow}%}.)$USER"
#  fi
#}

DEFAULT_USER='->'

# Change ls colours
LS_COLORS="ow=01;36;40" && export LS_COLORS

# make cd use the ls colours
zstyle ':completion:*' list-colors "${(@s.:.)LS_COLORS}"
autoload -Uz compinit
compinit

#source $HOME/.oh-my-zsh/custom/plugins/zsh-syntax-highlighting/zsh-syntax-highlighting.zsh
source $ZSH_CUSTOM/plugins/zsh-syntax-highlighting/zsh-syntax-highlighting.zsh
source /usr/share/autojump/autojump.sh
# source $HOME/.bashrc






# Fetch Windows ip address inside WSL environment
WINDOWS_IP=$(ip route | grep default | awk '{print $3}')
PROXY_HTTP="http://${WINDOWS_IP}:1082"
PROXY_SOCKS5="${WINDOWS_IP}:1081"

# Git & SSH for Git proxy
proxy_git () {
  git config --global http.https://github.com.proxy ${PROXY_HTTP}
  if ! grep -qF "Host github.com" ~/.ssh/config ; then
    echo "Host github.com" >> ~/.ssh/config
    echo "  User git" >> ~/.ssh/config
    echo "  ProxyCommand nc -X 5 -x ${PROXY_SOCKS5} %h %p" >> ~/.ssh/config
  else
    lino=$(($(awk '/Host github.com/{print NR}'  ~/.ssh/config)+2))
    sed -i "${lino}c\  ProxyCommand nc -X 5 -x ${PROXY_SOCKS5} %h %p" ~/.ssh/config
  fi
}

# Set proxy
set_proxy () {
  export http_proxy="${PROXY_HTTP}"
  export https_proxy="${PROXY_HTTP}"
  proxy_git
}

# Unset proxy
unset_proxy () {
  unset http_proxy
  unset https_proxy
  git config --global --unset http.https://github.com.proxy
}

# Set alias
alias proxy=set_proxy
alias deproxy=unset_proxy

export PATH="$HOME/.poetry/bin:$PATH"
export XDG_CONFIG_HOME="$HOME/.config"

export N_PREFIX="$HOME/n"; [[ :$PATH: == *":$N_PREFIX/bin:"* ]] || PATH+=":$N_PREFIX/bin"  # Added by n-install (see http://git.io/n-install-repo).





# youmeek.gitbooks.io && Custom
alias la='ls -a'
alias grep="grep --color=auto"
alias -s html='vim'   # 在命令行直接输入后缀为 html 的文件名，会在 Vim 中打开
alias -s rb='vim'     # 在命令行直接输入 ruby 文件，会在 Vim 中打开
alias -s py='vim'      # 在命令行直接输入 python 文件，会用 vim 中打开，以下类似
alias -s js='vim'
alias -s c='vim'
alias -s java='vim'
alias -s txt='vim'
alias -s gz='tar -xzvf' # 在命令行直接输入后缀为 gz 的文件名，会自动解压打开
alias -s tgz='tar -xzvf'
alias -s zip='unzip'
alias -s bz2='tar -xjvf'

alias s='neofetch'







# pyenv added
export PYENV_ROOT="$HOME/.pyenv"
export PATH="$PYENV_ROOT/bin:$PATH"
eval "$(pyenv init --path)"

