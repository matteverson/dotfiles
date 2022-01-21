#
# Executes commands at the start of an interactive session.
#
# Authors:
#   Sorin Ionescu <sorin.ionescu@gmail.com>
#

# Source Prezto.
if [[ -s "${ZDOTDIR:-$HOME}/.zprezto/init.zsh" ]]; then
  source "${ZDOTDIR:-$HOME}/.zprezto/init.zsh"
fi

# Customize to your needs...
gfind () {git log --all --grep=$@}
alias jekyll='docker run --rm -v "$PWD:/source" -p 4000:4000 jekyll'
alias gitclean='git branch --merged | grep -v "\*" | grep -v master | grep -v dev | xargs -n 1 git branch -d'
autoload -U zmv
alias mmv='noglob zmv -W'
