#!/bin/zsh

git clone --recursive https://github.com/sorin-ionescu/prezto.git "${ZDOTDIR:-$HOME}/.zprezto"
setopt EXTENDED_GLOB

ln -s "${ZDOTDIR:-$HOME}"/git/dotfiles/.gitconfig "${ZDOTDIR:-$HOME}/.gitconfig"

for rcfile in "${ZDOTDIR:-$HOME}"/git/dotfiles/prezto/.*; do
  ln -s "$rcfile" "${ZDOTDIR:-$HOME}/${rcfile:t}"
done

for rcfile in "${ZDOTDIR:-$HOME}"/git/dotfiles/tmux/.*; do
  ln -s "$rcfile" "${ZDOTDIR:-$HOME}/${rcfile:t}"
done
