#!/bin/bash

curl -s "https://get.sdkman.io" | bash
source "$HOME/.sdkman/bin/sdkman-init.sh"

# @ToDo: improve script to define latest version
sdk i java  8.0.222-zulu