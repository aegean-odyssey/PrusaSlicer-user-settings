#!/bin/sh

# path to the user's PrusaSlicer config directory
DATADIR="$HOME/.PrusaSlicer"

[ -n "$1" ] && {
    echo "FIX_UP: $1"
    grep -Ev '^print_?host' "$1" > "$1~~"
    mv "$1~~" "$1"
    exit 0
}

cp_dir() {
    echo "CP_DIR: $1"
    mkdir -p $1
    cp -u "$DATADIR"/$1/* $1/
}

# copy settings files from DATADIR, if newer or missing
cp_dir filament
cp_dir print
cp_dir printer
#cp_dir sla_print
#cp_dir sla_material

# remove print host entries from the printer .ini files
find printer -name "*.ini" -exec "$0" '{}' \;
