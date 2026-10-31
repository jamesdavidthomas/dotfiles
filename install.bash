#!/bin/bash
# A very simple shell script used to create symbolic links to the dotfiles stored in .dotfiles. 
# Important: should be run from within the dotfiles directory.

BASEDIR="$(pwd)"

# Link directories
[[ ! -d "${HOME}/.config" ]] && ln -s ${BASEDIR}/config ~/.config || echo '~/.config exists; skipping and not overwriting.'
[[ ! -d "${HOME}/.scripts" ]] && ln -s ${BASEDIR}/scripts ~/.scripts || echo '~/.scripts exists; skipping and not overwriting.'
[[ ! -d "${HOME}/.vim" ]]    && ln -s ${BASEDIR}/vim ~/.vim || echo '~/.vim exists; skipping and not overwriting.'

# Make bash look in config for configuration files
[[ ! -e "${HOME}/.bash_aliases" ]] && ln -s ~/.config/bash_aliases ~/.bash_aliases || echo '~/.bash_aliases exists; skipping and not overwriting.'
[[ ! -e "${HOME}/.bash_profile" ]] && ln -s ~/.config/bash_profile ~/.bash_profile || echo '~/.bash_profile exists; skipping and not overwriting.'
[[ ! -e "${HOME}/.bashrc" ]] && ln -s ~/.config/bashrc ~/.bashrc || echo '~/.bashrc exists; skipping and not overwriting.'
