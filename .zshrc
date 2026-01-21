# Enable Powerlevel10k instant prompt. Should stay close to the top of ~/.zshrc.
# Initialization code that may require console input (password prompts, [y/n]
# confirmations, etc.) must go above this block; everything else may go below.
if [[ -r "${XDG_CACHE_HOME:-$HOME/.cache}/p10k-instant-prompt-${(%):-%n}.zsh" ]]; then
  source "${XDG_CACHE_HOME:-$HOME/.cache}/p10k-instant-prompt-${(%):-%n}.zsh"
fi

# Path to your Oh My Zsh installation.
export ZSH="$HOME/.oh-my-zsh"
ZSH_THEME="powerlevel10k/powerlevel10k"

# Case-sensitive completion.
# CASE_SENSITIVE="true"

# Hyphen-insensitive completion.
# Case-sensitive completion must be off. _ and - will be interchangeable.
# HYPHEN_INSENSITIVE="true"

# Change the auto-update behavior
zstyle ':omz:update' mode auto      # update automatically without asking

# Auto-update (in days).
zstyle ':omz:update' frequency 13

# Uncomment the following line if pasting URLs and other text is messed up.
# DISABLE_MAGIC_FUNCTIONS="true"

# Uncomment the following line to disable colors in ls.
# DISABLE_LS_COLORS="true"

# Uncomment the following line to disable auto-setting terminal title.
# DISABLE_AUTO_TITLE="true"

# Uncomment the following line to enable command auto-correction.
# ENABLE_CORRECTION="true"

# Uncomment the following line to display red dots whilst waiting for completion.
# You can also set it to another string to have that shown instead of the default red dots.
# e.g. COMPLETION_WAITING_DOTS="%F{yellow}waiting...%f"
# Caution: this setting can cause issues with multiline prompts in zsh < 5.7.1 (see #5765)
# COMPLETION_WAITING_DOTS="true"

# Uncomment the following line if you want to disable marking untracked files
# under VCS as dirty. This makes repository status check for large repositories
# much, much faster.
# DISABLE_UNTRACKED_FILES_DIRTY="true"

# Change the command execution time stamp shown in the history command output.
# "mm/dd/yyyy"|"dd.mm.yyyy"|"yyyy-mm-dd"
HIST_STAMPS="mm/dd/yyyy"

# Would you like to use another custom folder than $ZSH/custom?
# ZSH_CUSTOM=/path/to/new-custom-folder

# Which plugins would you like to load?
# Standard plugins can be found in $ZSH/plugins/
# Custom plugins may be added to $ZSH_CUSTOM/plugins/
# Example format: plugins=(rails git textmate ruby lighthouse)
# Add wisely, as too many plugins slow down shell startup.
#
export FZF_BASE="${HOME}/.fzf/bin/fzf"

plugins=(
  git
  sudo
  colored-man-pages
  zsh-syntax-highlighting
  zsh-autosuggestions
  fzf
)

source $ZSH/oh-my-zsh.sh

# User configuration

# Path to the programs
export PATH="/home/kimjw/programs/bin":"/home/kimjw/programs":"/home/kimjw/programs/nvim-linux-x86_64/bin":"/home/kimjw/programs/node-v22.18.0-linux-x64/bin":"/usr/local/cuda/bin":${PATH}
export PATH="${PATH}":"/home/kimjw/.local/bin"

export LANG=en_US.UTF-8

# Preferred editor for local and remote sessions
export EDITOR=nvim
export VISUAL=nvim

# To customize prompt, run `p10k configure` or edit ~/.p10k.zsh.
[[ ! -f ~/.p10k.zsh ]] || source ~/.p10k.zsh
[ -f ~/.fzf.zsh ] && source ~/.fzf.zsh

alias g++="g++ -std=c++17"

export SYSTEMC_HOME="$HOME/systemC/systemc-3.0.1"
export SYSTEMC_INCLUDE="$SYSTEMC_HOME/include"
export SYSTEMC_LIBDIR="$SYSTEMC_HOME/lib-linux64"
export LD_LIBRARY_PATH="$LD_LIBRARY_PATH:$SYSTEMC_HOME/lib-linux64"

export GPG_TTY=$(tty)

# >>> conda initialize >>>
# !! Contents within this block are managed by 'conda init' !!
__conda_setup="$('/home/kimjw/miniconda3/bin/conda' 'shell.zsh' 'hook' 2> /dev/null)"
if [ $? -eq 0 ]; then
    eval "$__conda_setup"
else
    if [ -f "/home/kimjw/miniconda3/etc/profile.d/conda.sh" ]; then
        . "/home/kimjw/miniconda3/etc/profile.d/conda.sh"
    else
        export PATH="/home/kimjw/miniconda3/bin:$PATH"
    fi
fi
unset __conda_setup
# <<< conda initialize <<<

export HF_HOME="/data/huggingface"
export HF_HUB_CACHE="/data/huggingface/hub"

alias vim="nvim"
alias zshrc="nvim ~/.zshrc"
