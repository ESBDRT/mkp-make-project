#!/bin/bash

OS=$(uname -s)

# Package manager check per OS
case "$OS" in
    Linux)
        apt install -y git build-essential
        ;;
    Darwin)
        command -v make > /dev/null || xcode-select --install
        ;;
    *)
        echo "Unsupported OS"
        exit 1
        ;;
esac

# Shared install logic
rm -rf /tmp/mkp
git clone https://github.com/ESBDRT/MKP-Make-project.git /tmp/mkp || { echo "Error: failed to clone repository"; exit 1; }
rm -rf /usr/local/bin/mkp_cmd
cp -r /tmp/mkp /usr/local/bin/mkp_cmd || { echo "Error: failed to copy files"; exit 1; }
cp /tmp/mkp/mkp /usr/local/bin/mkp || { echo "Error: failed to install mkp command"; exit 1; }
rm -rf /tmp/mkp
chmod +x /usr/local/bin/mkp
echo "mkp installed successfully"
