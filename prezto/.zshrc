#
# Executes commands at the start of an interactive session.
#

# Source Prezto.
if [[ -s "${ZDOTDIR:-$HOME}/.zprezto/init.zsh" ]]; then
  source "${ZDOTDIR:-$HOME}/.zprezto/init.zsh"
fi

toscanner () {scp $* root@${SCANNER_IP}:/opt/nessus/lib/nessus/plugins/}
alias n5='sudo \ln -fs /opt/nessus/bin/nasl501 /opt/nessus/bin/nasl'
alias n6='sudo \ln -fs /opt/nessus/bin/nasl630 /opt/nessus/bin/nasl'
alias jekyll='docker run --rm -v "$PWD:/source" -p 4000:4000 jekyll'
