# ShellScript Project

This project contains a Bash script that automates the creation of directories and JSON files. The script fetches JSON data from an API, filters out specific keys, and saves the processed data into the created files.

## Features
- Creates directories based on the `Folder` variable in the `.env` file.
- Creates JSON files inside each directory based on the `LIST` variable in the `.env` file.
- Fetches JSON data from the API `https://jsonplaceholder.typicode.com/todos`.
- Filters out keys containing `id` or `Id` (case-insensitive) from the JSON data.

## Prerequisites
- **Bash**: Ensure you have a Bash shell available.
- **jq**: Install `jq` for JSON processing.
  - On Ubuntu/Debian:
    ```bash
    sudo apt-get install jq
    ```
  - On Windows (via Chocolatey):
    ```bash
    choco install jq
    ```

## Files
### 1. [.env](http://_vscodecontentref_/1)
The [.env](http://_vscodecontentref_/2) file contains environment variables used by the script:
```properties
Folder=home,car,office
LIST=1,2,3