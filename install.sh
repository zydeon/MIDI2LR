#!/bin/bash

# Make sure LR modules folder exist
LR_MODULES_PATH="$HOME/Library/Application Support/Adobe/Lightroom/Modules"
mkdir -p "$LR_MODULES_PATH"

# Remove previous plugin installation (if it exists)
DEST_PATH="$LR_MODULES_PATH/MIDI2LR.lrplugin"
rm -rf "$DEST_PATH"

# Copy plugin files
cp -R Source/LRPlugin/MIDI2LR.lrplugin "$DEST_PATH" || exit 1
cp -R Builds/MacOSX/build/Debug/MIDI2LR.app "$DEST_PATH" || exit 1
cp rtmidi/midiprobe "$DEST_PATH" || exit 1
