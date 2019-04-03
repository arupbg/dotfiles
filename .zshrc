# If you come from bash you might have to change your $PATH.
# export PATH=$HOME/bin:/usr/local/bin:$PATH

export NVM_DIR="$HOME/.nvm"
. "/usr/local/opt/nvm/nvm.sh"

#nvm use 7.10.0
nvm use 8.15.0

# Path to your oh-my-zsh installation.
export ZSH=/Users/arup/.oh-my-zsh

# Set name of the theme to load. Optionally, if you set this to "random"
# it'll load a random theme each time that oh-my-zsh is loaded.
# See https://github.com/robbyrussell/oh-my-zsh/wiki/Themes
ZSH_THEME="agnoster"

# Set list of themes to load
# Setting this variable when ZSH_THEME=random
# cause zsh load theme from this variable instead of
# looking in ~/.oh-my-zsh/themes/
# An empty array have no effect
# ZSH_THEME_RANDOM_CANDIDATES=( "robbyrussell" "agnoster" )

# Uncomment the following line to use case-sensitive completion.
# CASE_SENSITIVE="true"

# Uncomment the following line to use hyphen-insensitive completion. Case
# sensitive completion must be off. _ and - will be interchangeable.
# HYPHEN_INSENSITIVE="true"

# Uncomment the following line to disable bi-weekly auto-update checks.
# DISABLE_AUTO_UPDATE="true"

# Uncomment the following line to change how often to auto-update (in days).
# export UPDATE_ZSH_DAYS=13

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
# The optional three formats: "mm/dd/yyyy"|"dd.mm.yyyy"|"yyyy-mm-dd"
# HIST_STAMPS="mm/dd/yyyy"

# Would you like to use another custom folder than $ZSH/custom?
# ZSH_CUSTOM=/path/to/new-custom-folder

# Which plugins would you like to load? (plugins can be found in ~/.oh-my-zsh/plugins/*)
# Custom plugins may be added to ~/.oh-my-zsh/custom/plugins/
# Example format: plugins=(rails git textmate ruby lighthouse)
# Add wisely, as too many plugins slow down shell startup.
plugins=(
  sudo
  git
  history
  taskwarrior
  tmux
  tmuxinator 
  zsh-autosuggestions
  bundler
  dotenv
  osx
  rake
  rbenv
  ruby
  zsh-syntax-highlighting
  tmux-plugins/vim-tmux
  scrooloose/nerdtree
  Xuyuanp/nerdtree-git-plugin
)

#git clone https://github.com/zsh-users/zsh-syntax-highlighting.git
#echo "source ${(q-)PWD}/zsh-syntax-highlighting/zsh-syntax-highlighting.zsh" >> ${ZDOTDIR:-$HOME}/.zshrc

source /usr/local/share/zsh-syntax-highlighting/zsh-syntax-highlighting.zsh
source $ZSH/oh-my-zsh.sh

POWERLEVEL9K_MODE='awesome-patched'
ZSH_THEME="powerlevel9k/powerlevel9k"
POWERLEVEL9K_LEFT_PROMPT_ELEMENTS=(dir rbenv vcs)
POWERLEVEL9K_RIGHT_PROMPT_ELEMENTS=(status root_indicator background_jobs history time)
POWERLEVEL9K_PROMPT_ON_NEWLINE=true
POWERLEVEL9K_MULTILINE_FIRST_PROMPT_PREFIX="↱"
POWERLEVEL9K_MULTILINE_LAST_PROMPT_PREFIX="↳ "
POWERLEVEL9K_PROMPT_ADD_NEWLINE_COUNT=2
POWERLEVEL9K_LEFT_PROMPT_ELEMENTS=(icons_test)
# Add a space in the first prompt
 POWERLEVEL9K_MULTILINE_FIRST_PROMPT_PREFIX="%f"
 # Visual customisation of the second prompt line
 local user_symbol="$"
 if [[ $(print -P "%#") =~ "#" ]]; then
      user_symbol = "#"
 fi
 POWERLEVEL9K_MULTILINE_LAST_PROMPT_PREFIX="%{%B%F{black}%K{yellow}%} $user_symbol%{%b%f%k%F{yellow}%} %{%f%}"


# zsh tmux settings
ZSH_TMUX_AUTOSTART='true'

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
export SSH_KEY_PATH="~/.ssh/rsa_id"

# Set personal aliases, overriding those provided by oh-my-zsh libs,
# plugins, and themes. Aliases can be placed here, though oh-my-zsh
# users are encouraged to define aliases within the ZSH_CUSTOM folder.
# For a full list of active aliases, run `alias`.
#
# Example aliases
# alias zshconfig="mate ~/.zshrc"
# alias ohmyzsh="mate ~/.oh-my-zsh"
alias c=clear
alias l='ls -l'
export PATH=$PATH:/Users/arup/projects/work/bg/tools/apache-maven-3.5.3/bin:/opt/local/bin
export PATH=$PATH:/Users/arup/projects/mongodb/bin
#/Users/arup/Library/Python/2.7/lib/python/site-packages/powerline/bindings/zsh/powerline.zsh
#
# https://coderwall.com/p/g-d8rg/tmux-1-8-vim-macvim-easy-osx-clipboard-integration
#alias mvim="reattach-to-user-namespace mvim"
# That's it! Now every yank (y, yy) or delete (d, dd) commands will copy data to system buffer.
#alias vim="reattach-to-user-namespace vim"
#alias vim="/usr/local/Cellar/vim/8.1.0950/bin/vim"
alias vi=nvim
alias vim=nvim

#set cmdline to vi
set -o vi

#THIS MUST BE AT THE END OF THE FILE FOR SDKMAN TO WORK!!!
export SDKMAN_DIR="/Users/arup/.sdkman"
[[ -s "/Users/arup/.sdkman/bin/sdkman-init.sh" ]] && source "/Users/arup/.sdkman/bin/sdkman-init.sh"
source /Users/arup/zsh-syntax-highlighting/zsh-syntax-highlighting.zsh
source ~/.tmux-git/tmux-git.sh
#tmux list-sessions || ( tmux new -d -s $DUMMY && tmuxinator start $PROJECT )
tmux list-sessions || ( tmux new -d )

if [[ -n $VIRTUAL_ENV && -e "${VIRTUAL_ENV}/bin/activate" ]]; then
  source "${VIRTUAL_ENV}/bin/activate"
fi


# tabtab source for serverless package
# uninstall by removing these lines or running `tabtab uninstall serverless`
[[ -f /Users/arup/.nvm/versions/node/v7.10.0/lib/node_modules/serverless/node_modules/tabtab/.completions/serverless.zsh ]] && . /Users/arup/.nvm/versions/node/v7.10.0/lib/node_modules/serverless/node_modules/tabtab/.completions/serverless.zsh
# tabtab source for sls package
# uninstall by removing these lines or running `tabtab uninstall sls`
# 👉 "
[[ -f /Users/arup/.nvm/versions/node/v7.10.0/lib/node_modules/serverless/node_modules/tabtab/.completions/sls.zsh ]] && . /Users/arup/.nvm/versions/node/v7.10.0/lib/node_modules/serverless/node_modules/tabtab/.completions/sls.zsh
export ANDROID_HOME="/Users/arup//Library/Android/sdk"
export ANDROID_SDK_ROOT="/Users/arup/Library/Android/sdk"
export PATH=$PATH:$ANDROID_HOME/platform-tools:$ANDROID_HOME/tools/bin:$ANDROID_HOME/emulator
export PROMPT="$PROMPT
✏️  "
export PATH="/usr/local/sbin:$PATH"
export PATH="/usr/local/opt/ruby/bin:$PATH"
export MONO_GAC_PREFIX='/usr/local'
export PATH="/usr/local/opt/openssl/bin:$PATH"
export PATH="/usr/local/opt/openssl/bin:$PATH"
alias python=python3
alias pip=pip3
export PATH="/usr/local/opt/qt/bin:$PATH"
export VISUAL=nvim

# Use the right colorscheme
# BASE16_SHELL=$HOME/.config/base16-shell/
# [ -n "$PS1" ] && [ -s $BASE16_SHELL/profile_helper.sh ] && eval "$($BASE16_SHELL/profile_helper.sh)"

[ -f ~/.fzf.zsh ] && source ~/.fzf.zsh

# export NVM_DIR="$HOME/.nvm"
# [ -s "$NVM_DIR/nvm.sh" ] && \. "$NVM_DIR/nvm.sh"  # This loads nvm
# [ -s "$NVM_DIR/bash_completion" ] && \. "$NVM_DIR/bash_completion"  # This loads nvm bash_completion
#export PATH="/home/linuxbrew/.linuxbrew/bin:$PATH"
