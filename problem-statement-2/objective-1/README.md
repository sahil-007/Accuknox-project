# System Health Monitoring Script

![System Health Status](https://img.shields.io/badge/status-active-brightgreen)
![License](https://img.shields.io/badge/license-MIT-blue)

## Overview

This script is designed to monitor the health of a Linux system by continuously checking critical metrics including CPU usage, memory usage, disk space, and running processes. It provides real-time alerts if any of these metrics exceed predefined thresholds.

## Features

- **CPU Usage Monitoring**: Alerts if CPU usage exceeds a defined threshold (e.g., 80%).
- **Memory Usage Monitoring**: Alerts if memory usage exceeds a specified limit.
- **Disk Space Monitoring**: Alerts if disk space usage surpasses a set threshold.
- **Running Processes Monitoring**: Alerts if the number of running processes exceeds a defined limit.
- **Alerts**: Sends alerts to the console or logs them to a file (`system_health.log`) when any metric exceeds the predefined thresholds.

## Usage

1. **Clone the repository:**
    ```bash
    git clone https://github.com/your-username/your-repository.git
    cd your-repository
    ```

2. **Configure the script:**
    - Open `system_health_monitor.sh` and set your thresholds for CPU, memory, disk space, and process count.

3. **Run the script:**
    ```bash
    ./system_health_monitor.sh
    ```

4. **Check the log file:**
    - Alerts will be logged to `system_health.log` if any metric exceeds the predefined threshold.

## Configuration

Customize the thresholds in the script as needed. For example:

- **CPU Usage Threshold:**
    ```bash
    CPU_THRESHOLD=80
    ```

- **Memory Usage Threshold:**
    ```bash
    MEMORY_THRESHOLD=80
    ```

- **Disk Space Threshold:**
    ```bash
    DISK_THRESHOLD=90
    ```

- **Running Processes Threshold:**
    ```bash
    PROCESS_THRESHOLD=100
    ```

## Example

**Sample Output:**

```bash
[2024-07-27 15:00:00] CPU Usage Alert: Current usage is at 85%
[2024-07-27 15:00:00] Memory Usage Alert: Current usage is at 90%


