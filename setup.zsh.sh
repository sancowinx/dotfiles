#!/bin/bash

# The basic flow is
# Install all dependency first (brew)
# for example, asdf plugins, install asdf config, then all others config
# Then load the .zshrc copy to the HOME config

# =========================================================
# Homebrew
# =========================================================
# brew must come first, since some of the asdf has dependencies
/bin/bash ./brew--setup.sh

# =========================================================
# asdf-vm
# =========================================================
## asdf needs plugin, so do a plugin first and then set a global

# Add asdf plugins list
/bin/bash ./add-asdf-plugin.sh

# Once asdf plugins added, copy the .tool-versions and install (use asdf install)
# .tool-versions at the home folder will be a global versions of all language/tools
/bin/bash ./install-asdf-langs.sh

# =========================================================
# oh-my-zsh
# =========================================================
# oh-my-zsh should be only one line, nothing more
/bin/bash -c "$(curl -fsSL https://raw.githubusercontent.com/ohmyzsh/ohmyzsh/master/tools/install.sh)"

# =========================================================
# .zshrc config
# =========================================================
# should be just copy and paste
cp ./zshrc ~/.zshrc