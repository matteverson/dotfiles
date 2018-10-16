#
# Defines environment variables.
#
# Authors:
#   Sorin Ionescu <sorin.ionescu@gmail.com>
#

# Ensure that a non-login, non-interactive shell has a defined environment.
if [[ "$SHLVL" -eq 1 && ! -o LOGIN && -s "${ZDOTDIR:-$HOME}/.zprofile" ]]; then
  source "${ZDOTDIR:-$HOME}/.zprofile"
fi

export PLUGINDIR="/home/meverson/git/nessus-plugins"
export NASL_INCLUDE="$PLUGINDIR/includes;$PLUGINDIR/nbin/**;$PLUGINDIR/compiled;$PLUGINDIR/plugins/**"
