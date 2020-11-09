# Path to your oh-my-zsh installation.
export ZSH=$HOME/.oh-my-zsh

# Set name of the theme to load.
# Look in ~/.oh-my-zsh/themes/
# Optionally, if you set this to "random", it'll load a random theme each
# time that oh-my-zsh is loaded.
ZSH_THEME="muse"

# Uncomment the following line to display red dots whilst waiting for completion.
COMPLETION_WAITING_DOTS="true"

# Which plugins would you like to load? (plugins can be found in ~/.oh-my-zsh/plugins/*)
# Custom plugins may be added to ~/.oh-my-zsh/custom/plugins/
# Example format: plugins=(rails git textmate ruby lighthouse)
# Add wisely, as too many plugins slow down shell startup.
plugins=(git)

# User configuration
export PATH="$HOME/.bin:$HOME/bin:$PATH:.git/safe/../../bin:/usr/local/sbin:/usr/local/bin:/usr/bin:/bin:/usr/sbin:/sbin"

. $ZSH/oh-my-zsh.sh

# ASDF-VM Config
. $HOME/.asdf/asdf.sh
. $HOME/.asdf/completions/asdf.bash

# ssh + gpg
export SSH_KEY_PATH="~/.ssh/id_ed25519"
export GPG_TTY=$(tty)

# Set personal aliases, overriding those provided by oh-my-zsh libs,
# plugins, and themes. Aliases can be placed here, though oh-my-zsh
# users are encouraged to define aliases within the ZSH_CUSTOM folder.
# For a full list of active aliases, run `alias`.
alias zshconfig="vim ~/.zshrc"
alias zshreload=". ~/.zshrc"

# The next line updates PATH for the Google Cloud SDK.
if [ -f '~/devel/google-cloud-sdk/path.zsh.inc' ]; then . '~/devel/google-cloud-sdk/path.zsh.inc'; fi

# The next line enables shell command completion for gcloud.
if [ -f '~/devel/google-cloud-sdk/completion.zsh.inc' ]; then . '~/devel/google-cloud-sdk/completion.zsh.inc'; fi
