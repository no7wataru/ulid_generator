#!/bin/bash

# Required parameters:
# @raycast.schemaVersion 1
# @raycast.title Generate ULID
# @raycast.mode compact

# Optional parameters:
# @raycast.icon 🆔
# @raycast.packageName ULID Tools
# @raycast.argument1 { "type": "text", "placeholder": "Number of ULIDs (optional, default: 1)", "optional": true }

# Documentation:
# @raycast.description Generates one or more ULIDs using the ulidgen tool and copies them to the clipboard.
# @raycast.author Your Name/Handle
# @raycast.authorURL https://github.com/no7wataru

# Get the absolute path to the directory containing this script
SCRIPT_DIR=$(cd -- "$(dirname -- "${BASH_SOURCE[0]}")" &> /dev/null && pwd)
ULIDGEN_PATH="$SCRIPT_DIR/ulidgen"

# Determine the number of ULIDs to generate
COUNT=1
if [[ -n "$1" ]]; then
  if [[ "$1" =~ ^[0-9]+$ ]] && [ "$1" -gt 0 ]; then
    COUNT=$1
  else
    echo "Error: Count must be a positive integer."
    exit 1
  fi
fi

# Check if ulidgen binary exists and is executable
if [[ ! -f "$ULIDGEN_PATH" ]]; then
  echo "Error: ulidgen binary not found at $ULIDGEN_PATH"
  echo "Please build it first using 'go build -o ulidgen'"
  exit 1
fi
if [[ ! -x "$ULIDGEN_PATH" ]]; then
    echo "Error: ulidgen binary is not executable."
    echo "Please run 'chmod +x $ULIDGEN_PATH'"
    exit 1
fi

# Generate ULID(s) and copy to clipboard
"$ULIDGEN_PATH" -n "$COUNT" | pbcopy

# Print a confirmation message for Raycast
echo "$COUNT ULID(s) copied to clipboard."
