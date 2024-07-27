2. Automated Backup Solution: 
Write a script to automate the backup of a specified directory to a remote server or a cloud storage solution. The script should provide a report on the success or failure of the backup operation

# Automated Backup Script

This repository contains a script for automating the backup of a specified directory to an AWS S3 bucket.

## Script Details

- **File:** `backup_script.sh`
- **Description:** A bash script to sync a local directory with an S3 bucket and log the backup process.

## Usage

1. Configure the script by setting the `SOURCE_DIR`, `S3_BUCKET`, and `LOG_FILE` variables.
2. Run the script: `./backup.sh`
