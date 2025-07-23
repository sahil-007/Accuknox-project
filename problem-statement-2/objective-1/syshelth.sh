#!/bin/bash

# Thresholds
CPU_THRESHOLD=80
MEMORY_THRESHOLD=80
DISK_THRESHOLD=80
PROCESS_THRESHOLD=80

# Log file
LOG_FILE="system_health.log"




# Function to check CPU usage
check_cpu_usage() {
    local cpu_usage
    cpu_usage=$(top -bn1 | grep "Cpu(s)" | awk '{print $2 + $4}')
    echo "CPU Usage: $cpu_usage%"
    if (( ${cpu_usage%.*} > CPU_THRESHOLD )); then
        echo "$(date): CPU usage is above $CPU_THRESHOLD% =>  $cpu_usage%" >> "$LOG_FILE"
    fi
}

# Function to check memory usage
check_memory_usage() {
    local memory_usage
    memory_usage=$(free | grep Mem | awk '{print $3/$2 * 100.0}')
    echo "Memory Usage: $memory_usage%"
    if (( ${memory_usage%.*} > MEMORY_THRESHOLD )); then
        echo "$(date): Memory usage is above $MEMORY_THRESHOLD% =>  $memory_usage%" >> "$LOG_FILE"
    fi
}

# Function to check disk usage
check_disk_usage() {
    local disk_usage
    disk_usage=$(df / | grep / | awk '{ print $5}' | sed 's/%//g')
    echo "Disk Usage: $disk_usage%"
    if (( disk_usage > DISK_THRESHOLD )); then
        echo "$(date): Disk usage is above $DISK_THRESHOLD% => $disk_usage%" >> "$LOG_FILE"
    fi
}

# Function to check number of running processes
check_running_processes() {
    local process_count
    process_count=$(ps aux | wc -l)
    echo "Running Processes: $process_count"
    if (( process_count > PROCESS_THRESHOLD )); then
        echo "$(date): Running processes count is above $PROCESS_THRESHOLD% => $process_count" >> "$LOG_FILE"
    fi
}

# Main function to check system health
#
check_system_health() {
	 echo "$(date): Monitoring system health has started." >> "$LOG_FILE"
	  echo   "Monitoring system health has started."

	  echo 

    check_cpu_usage
    check_memory_usage
    check_disk_usage
    check_running_processes
    echo
    echo "$(date): Monitoring system health has ended." >> "$LOG_FILE"
    echo "Monitoring system health has ended."

}

# Run the system health check
check_system_health

