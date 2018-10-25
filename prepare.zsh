#!/bin/zsh

git clone --recursive https://github.com/sorin-ionescu/prezto.git "${ZDOTDIR:-$HOME}/.zprezto"
chsh -s /bin/zsh
setopt EXTENDED_GLOB

ln -s "${ZDOTDIR:-$HOME}"/git/dotfiles/.gitconfig "${ZDOTDIR:-$HOME}/.gitconfig"

for rcfile in "${ZDOTDIR:-$HOME}"/git/dotfiles/prezto/.*; do
  ln -s "$rcfile" "${ZDOTDIR:-$HOME}/${rcfile:t}"
done

for rcfile in "${ZDOTDIR:-$HOME}"/git/dotfiles/tmux/.*; do
  ln -s "$rcfile" "${ZDOTDIR:-$HOME}/${rcfile:t}"
done

for rcfile in "${ZDOTDIR:-$HOME}"/git/dotfiles/vim/.*; do
  ln -s "$rcfile" "${ZDOTDIR:-$HOME}/${rcfile:t}"
done

curl https://j.mp/spf13-vim3 -L > spf13-vim.sh && sh spf13-vim.sh
