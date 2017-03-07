# Path to your oh-my-zsh installation.
export ZSH=$HOME/.oh-my-zsh
export ANDROID_HOME=/usr/local/Cellar/android-sdk/(insert-current-sdk)
export JAVA7_HOME=`/usr/libexec/java_home -v 1.7`
export JAVA8_HOME=`/usr/libexec/java_home -v 1.8`
export JAVA_HOME=$JAVA8_HOME

# Set name of the theme to load.
# Look in ~/.oh-my-zsh/themes/
# Optionally, if you set this to "random", it'll load a random theme each
# time that oh-my-zsh is loaded.
ZSH_THEME="doubleend"

# Uncomment the following line to use case-sensitive completion.
# CASE_SENSITIVE="true"

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
COMPLETION_WAITING_DOTS="true"

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
# plugins=(git)

# User configuration

export PATH="/usr/local/bin:/usr/bin:/bin:/usr/sbin:/sbin:/Users/(insert-current-user)/.oh-my-zsh/scripts"
# export MANPATH="/usr/local/man:$MANPATH"

source $ZSH/oh-my-zsh.sh

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
# export SSH_KEY_PATH="~/.ssh/dsa_id"

# Set personal aliases, overriding those provided by oh-my-zsh libs,
# plugins, and themes. Aliases can be placed here, though oh-my-zsh
# users are encouraged to define aliases within the ZSH_CUSTOM folder.
# For a full list of active aliases, run `alias`.

# Example aliases
# alias zshconfig="mate ~/.zshrc"
# alias ohmyzsh="mate ~/.oh-my-zsh"
alias lt="l -t"
alias dev="cd ~/Developer"
alias wd="cd ~/Developer/(insert-current-project)"
alias rmorig="find . -type f -name \*.orig -exec rm {} \;"
alias ga="git add -A .; gs"
alias gb="git branch"
alias gc="git commit"
alias gca="git commit --amend"
alias gcm="git commit -m"
alias gcl="git clone"
alias gf="git fetch"
alias gs="git status"
alias go="git checkout"
alias gpl="git pull"
alias gplr="git pull --rebase"
alias gp="git push"
alias gpf="git push --force"
alias gra="rmorig; git rebase --abort"
alias grc="rmorig; git rebase --continue"
alias gma="git merge --abort"
alias gmt="git mergetool"
alias gi="git update-index --assume-unchanged"
alias gilist="git ls-files -v | grep -e '^[hsmrck]'"
alias adbrestart="adb kill-server; adb start-server; adb devices"

# Start in working directory
wd

# Update & Clean up Homebrew
echo ''
echo '============================='
echo 'Updating Homebrew...'
brew update
brew upgrade
echo '============================='
echo 'Cleaning up Homebrew...'
brew cleanup
brew cask cleanup
echo 'Cleanup done.'
echo '============================='
echo 'Doctor Homebrew...'
brew doctor
brew cask doctor
echo '============================='
