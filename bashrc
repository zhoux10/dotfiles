PROMPT_COLOR='\e[00m\e[31;01;166m'
export PS1='\['$PROMPT_COLOR'\]\w\$\[\e[0m\] '
export EDITOR="atom"

MILLION=1000000
export HISTFILESIZE=$MILLION
export HISTSIZE=$MILLION

# update bash history after each command
export PROMPT_COMMAND="history -a"

export MPORTS_DIR=/opt/local/bin:/opt/local/sbin
# prefer macports stuff
PATH=$MPORTS_DIR:$PATH
#export EMACS='/opt/local/bin/emacs'

source ~/.dotfiles/git-completion.bash

# Recommended by rbenv
PATH="$HOME/.rbenv/bin:$PATH"
eval "$(rbenv init -)"

PATH="/Applications/Postgres.app/Contents/Versions/9.3/bin:$PATH"
PATH="$PATH:$HOME/.bin"

if [ -f ~/.nvm/nvm.sh ]; then
  source ~/.nvm/nvm.sh
  nvm alias default 0.10 > /dev/null
fi

cp ~/.dotfiles/gitconfig.backup ~/.dotfiles/gitconfig

### Added by the Heroku Toolbelt
export PATH="/usr/local/heroku/bin:$PATH"

# Load aliases
[[ -f ~/.aliases ]] && source ~/.aliases
