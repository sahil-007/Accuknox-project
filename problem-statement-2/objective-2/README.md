# Automated Backup Script

## Overview

This repository contains a **bash script** for automating the backup of a specified directory to an AWS S3 bucket. It simplifies the backup process and ensures your data is securely stored in the cloud.

## Script Details

- **File:** `backup.sh`
- **Description:** A bash script that syncs a local directory with an AWS S3 bucket and logs the backup process to a specified file.

## Features

- **Automatic Backup**: Syncs files from a local directory to an S3 bucket.
- **Logging**: Records backup process details in a log file.
- **Alerts**: Provides console output on the success or failure of the backup.

## Usage

1. **Clone the repository:**
    ```bash
    git clone https://github.com/your-username/your-repository.git
    cd your-repository
    ```

2. **Configure the Script:**
    Open `backup.sh` and set the following variables to match your environment:
    ```bash
    SOURCE_DIR="/path/to/your/local/directory"
    S3_BUCKET="s3://your-s3-bucket-name"
    LOG_FILE="/path/to/your/backup.log"
    ```

3. **Run the Script:**
    Execute the script to start the backup process:
    ```bash
    ./backup.sh
    ```

4. **Check the Log File:**
    The log file (`backup.log`) will contain details about the backup process and any alerts.

## Example

**Configuration Example:**
```bash
SOURCE_DIR="/home/ubuntu/project"
S3_BUCKET="s3://backup-project3"
LOG_FILE="/home/ubuntu/backup.log"
```
## Sample output
```bash
[2024-07-27 15:00:00] Starting backup of /home/ubuntu/project to s3://backup-project3
[2024-07-27 15:00:10] Backup completed successfully.
```

