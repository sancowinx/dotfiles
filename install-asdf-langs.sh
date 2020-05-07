#!/bin/bash

# Check if there is a .tool-versions already there yet
if ! [ -f "$HOME/.tool-versions" ]; then
    echo ".tool-versions is missing"
    # Create .tool-versions to the home folder
    # ?

    # Or copy
    cp ./.tool-versions ~/.tool-versions
fi

asdf install
