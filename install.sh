#!/bin/bash

INSTALL_DIR="/usr/local/bin"

sudo curl https://raw.githubusercontent.com/Adfero/Dev-Desktop-Utilities/master/makedrupalsite.sh > "$INSTALL_DIR/makedrupalsite"
sudo chmod a+x "$INSTALL_DIR/makedrupalsite"
