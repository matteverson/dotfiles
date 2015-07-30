#!/bin/zsh

#git clone --recursive https://github.com/sorin-ionescu/prezto.git "${ZDOTDIR:-$HOME}/.zprezto"
#chsh -s /bin/zsh
setopt EXTENDED_GLOB

for rcfile in "${ZDOTDIR:-$HOME}"/git/dotfiles/prezto/.z*; do
  ln -s "$rcfile" "${ZDOTDIR:-$HOME}/${rcfile:t}"
done

for rcfile in "${ZDOTDIR:-$HOME}"/git/dotfiles/tmux/.*; do
  ln -s "$rcfile" "${ZDOTDIR:-$HOME}/${rcfile:t}"
done
