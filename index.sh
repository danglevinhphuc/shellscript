#!/bin/bash

BASE_URL="https://jsonplaceholder.typicode.com/todos"

# Load environment variables from .env file
source .env

# Convert Folder and LIST variables into arrays
IFS=',' read -r -a folders <<< "$Folder"
IFS=',' read -r -a files <<< "$LIST"

# Loop through each folder
for folder in "${folders[@]}"; do
  # Create the directory
  mkdir -p "$folder"

  # Loop through each file and create it inside the folder
  for file in "${files[@]}"; do
    # Construct the URL by appending the file name to the base URL
    URL="$BASE_URL/$file"

    # Fetch JSON data from the API, remove keys containing "id" or "Id", and save it to the file
    curl -s "$URL" | jq 'with_entries(select(.key | test("id"; "i") | not))' > "$folder/$file.json"
  done
done

echo "Directories and JSON files created successfully."