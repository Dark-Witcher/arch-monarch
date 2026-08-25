#!/bin/bash

set -euo pipefail

SCRIPT_DIR="$(cd -- "$(dirname -- "${BASH_SOURCE[0]}")" && pwd)"
THEME_DIR="/usr/share/plymouth/themes/arch-win-spinner"

echo "Installing Arch Win Spinner Plymouth theme..."

sudo install -d "$THEME_DIR"

sudo cp -a \
    "$SCRIPT_DIR/images" \
    "$SCRIPT_DIR/arch-win-spinner.plymouth" \
    "$SCRIPT_DIR/arch-win-spinner.script" \
    "$THEME_DIR/"

sudo plymouth-set-default-theme -R arch-win-spinner

echo "Arch Win Spinner installed and set as the default Plymouth theme."
