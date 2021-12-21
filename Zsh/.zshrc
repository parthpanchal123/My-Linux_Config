# Enable Powerlevel10k instant prompt. Should stay close to the top of ~/.zshrc.
# Initialization code that may require console input (password prompts, [y/n]
# confirmations, etc.) must go above this block; everything else may go below.
if [[ -r "${XDG_CACHE_HOME:-$HOME/.cache}/p10k-instant-prompt-${(%):-%n}.zsh" ]]; then
  source "${XDG_CACHE_HOME:-$HOME/.cache}/p10k-instant-prompt-${(%):-%n}.zsh"
fi

# If you come from bash you might have to change your $PATH.
# export PATH=$HOME/bin:/usr/local/bin:$PATH

# Path to your oh-my-zsh installation.
export ZSH="/home/im_parth/.oh-my-zsh"
export NVIM_PATH="/usr/bin/nvim.appimage"

# Set name of the theme to load --- if set to "random", it will
# load a random theme each time oh-my-zsh is loaded, in which case,
# to know which specific one was loaded, run: echo $RANDOM_THEME
# See https://github.com/ohmyzsh/ohmyzsh/wiki/Themes
ZSH_THEME="agnoster"

# Set list of themes to pick from when loading at random
# Setting this variable when ZSH_THEME=random will cause zsh to load
# a theme from this variable instead of looking in $ZSH/themes/
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
# Standard plugins can be found in $ZSH/plugins/
# Custom plugins may be added to $ZSH_CUSTOM/plugins/
# Example format: plugins=(rails git textmate ruby lighthouse)
# Add wisely, as too many plugins slow down shell startup.
plugins=(git zsh-autosuggestions zsh-syntax-highlighting docker docker-compose node npm)

source $ZSH/oh-my-zsh.sh

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

# Set personal aliases, overriding those provided by oh-my-zsh libs,
# plugins, and themes. Aliases can be placed here, though oh-my-zsh
# users are encouraged to define aliases within the ZSH_CUSTOM folder.
# For a full list of active aliases, run `alias`.
#

# Variables

CUSTOM_NVIM_PATH=$HOME/nvim.appimage


#  aliases
# system
alias zshconfig="nano ~/.zshrc"
alias nvimconfig="cd $HOME/.config/nvim"
alias nv="/home/im_parth/Downloads/neovide/target/release/neovide"
alias cls="clear"
alias ls="lsd"
#alias cat="batcat"
alias web="cd $HOME/FromDesktop/Web"
alias app="cd $HOME/FromDesktop/Android_Projects"
alias home="cd ~/"
alias sau="sudo apt update && apt upgrade"
# vs-code
alias "code"="code . && exit"

alias nvim="~/.\/nvim.appimage"

# flutter 
alias emulator="flutter emulators --launch sdk gphone64 x86 64"
alias fpg="flutter pub get"
alias fr="flutter run"
# git 

alias gi="git init"
alias ga="git add ."
alias gp='git push' 
alias graph="git log --oneline --graph --decorate --all"
alias gs="git status"
alias gc="git commit -m"
alias gcb="git checkout -b"
alias gv="gh repo view --web"
alias gpull="git pull"
#yarn
alias ya="yarn add"

export PATH=$HOME/Downloads/flutter_linux_1.22.5-stable/flutter/bin:$PATH
export PATH=$HOME/Downloads/node-v16.13.0-linux-x64/bin:$PATH
export ANDROID_HOME=$HOME/Android/Sdk
export JAVA_HOME=/usr/lib/jvm/jdk-15.0.1
export PATH=$PATH:$JAVA_HOME/bin
export PATH=$PATH:$ANDROID_HOME/tools
export PATH=$HOME/Android/Sdk/platform-tools:$PATH
export PATH=$HOME/Downloads/ideaIU-2021.2.3/idea-IU-212.5457.46/bin:$PATH
export PATH=$HOME/Downloads/flutter_linux_1.22.5-stable/flutter/.pub-cache/bin:$PATH
export PATH="${PATH}:${HOME}/.local/bin/"
export PATH="/home/im_parth/.local/share/solana/install/active_release/bin:$PATH"
export PATH=$HOME/Downloads/go1.16.6.linux-amd64/go/bin:$PATH
export PATH=$HOME/.local/share/nvim/lsp_servers:$PATH
export PATH=$HOME/.local/share/nvim/lsp_servers/rust:$PATH
export PATH=$HOME/.local/share/nvim/lsp_servers/jdtls:$PATH
export PATH=$HOME/.local/share/nvim/lsp_servers/clangd:$PATH
[ -f ~/.fzf.zsh ] && source ~/.fzf.zsh

### RANDOM COLOR SCRIPT ###
colorscript random

eval "$(starship init zsh)"

# To customize prompt, run `p10k configure` or edit ~/.p10k.zsh.
[[ ! -f ~/.p10k.zsh ]] || source ~/.p10k.zsh

# Import colorscheme from 'wal' asynchronously
# &   # Run the process in the background.
# ( ) # Hide shell job control messages.
(cat ~/.cache/wal/sequences &)

# Alternative (blocks terminal for 0-3ms)
cat ~/.cache/wal/sequences

# To add support for TTYs this line can be optionally added.
source ~/.cache/wal/colors-tty.sh
