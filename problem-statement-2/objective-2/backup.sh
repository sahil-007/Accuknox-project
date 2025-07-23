#!/bin/bash

# Configuration
SOURCE_DIR="/home/ubuntu/project"
S3_BUCKET="s3://backup-project3"
LOG_FILE="/home/ubuntu/backup.log"
DATE=$(date +"%Y-%m-%d %H:%M:%S")

# Function to log messages
log_message() {
    echo "[$DATE] $1" >> "$LOG_FILE"
    echo "$1"
}

# Check if aws CLI is installed
if ! command -v aws &> /dev/null; then
    log_message "aws CLI not found. Please install it to proceed."
    exit 1
fi

# Check if the source directory exists
if [ ! -d "$SOURCE_DIR" ]; then
    log_message "Source directory $SOURCE_DIR does not exist."
    exit 1
fi

# Clear or create the log file
> "$LOG_FILE"

# Function to perform backup
perform_backup() {
    log_message "Starting backup of $SOURCE_DIR to $S3_BUCKET"

    # Sync local directory to S3 bucket
    if aws s3 sync "$SOURCE_DIR" "$S3_BUCKET" --delete; then
        log_message "Backup completed successfully."
    else
        log_message "Backup failed."
    fi
}

# Run the backup
perform_backup
