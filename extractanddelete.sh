#!/bin/bash

# Move to the directory containing the RAR files
cd downloaded

# Iterate through each RAR file
for file in *.rar; do
    # Extract the contents of the RAR file, overwriting existing files without prompting
    unrar x -o+ "$file"
    
    # Delete the original RAR file
    rm "$file"
done
