#!/bin/bash

# Change the path to your text file containing URLs
URL_FILE="urls.txt"

# Change this to the directory where you want to save the downloaded files
DOWNLOAD_DIR="/mnt/sdc"

# Loop through each line in the text file
while IFS= read -r url; do
    # Use wget to download the file linked by the URL
    wget "$url" -P "$DOWNLOAD_DIR"
done < "$URL_FILE"
