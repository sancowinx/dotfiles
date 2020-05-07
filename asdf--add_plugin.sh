#!/bin/bash

# Note when installing
# for node, if there is no gpg (gnupg), it died, so it needs to be in the brew

plugins=(nodejs python rust direnv golang java nomad kotlin)

for plugin_name in "${plugins[@]}"
do
    if [ $plugin_name == "nodejs" ]
    then
        echo "Adding asdf-$plugin_name"
        # For asdf-nodejs it must import the OpenGPG key first
        bash ~/.asdf/plugins/nodejs/bin/import-release-team-keyring      
    fi

    asdf plugin-add $plugin_name

done
