#!/usr/bin/env bash

mkdir -p ${HOME}/.config/journal-cli/
mkdir -p ${HOME}/.config/journal-cli/entries/

mv ${HOME}/Journal-Cli/* ${HOME}/.config/journal-cli/

echo "Setting up permissions..."

chmod +x "${HOME}/.config/journal-cli/journal-cli" && chmod +x "${HOME}/.config/journal-cli/tui"

rm -rf "${HOME}/Journal-Cli"

sudo echo "alias journal-cli=\"${HOME}/.config/journal-cli/journal-cli\"" >> "${HOME}/.bashrc"

source "${HOME}/.bashrc"

rm -rf "${HOME}/.config/journal-cli/setup.sh"

echo "Done!"

sleep 0.2s

clear


