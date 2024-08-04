#!/bin/sh

# Define the source and destination files
SOURCE_FILE="prod.env"
DEST_FILE=".env"

# Check if the source file exists
if [ -f "$SOURCE_FILE" ]; then
    # Create a symbolic link to the source file
    ln -sf "$SOURCE_FILE" "$DEST_FILE"

    # Allow direnv to load the new .env file
    direnv allow

    echo "Environment setup complete. '$DEST_FILE' linked to '$SOURCE_FILE' and direnv allowed."
else
    echo "Error: Source file '$SOURCE_FILE' not found."
    exit 1
fi
