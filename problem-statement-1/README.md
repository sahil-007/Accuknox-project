# Wisecow Application

## Project Repository

[Wisecow GitHub Repository](https://github.com/nyrahul/wisecow)

## Objective

This repository contains the source code and Dockerfile for containerizing the Wisecow application.

## Dockerization

The Wisecow application has been containerized using Docker. Below are the instructions for building and running the Docker image.

### Prerequisites

- **Docker:** Ensure Docker is installed on your local machine. [Docker Installation Guide](https://docs.docker.com/get-docker/)

### Dockerfile

The `Dockerfile` included in this repository defines the environment for the Wisecow application. Here's a brief overview:

# Use an official Debian base image
FROM debian:bullseye-slim

# Install dependencies
RUN apt-get update && \
    apt-get install -y cowsay fortune netcat && \
    apt-get clean && \
    rm -rf /var/lib/apt/lists/*

# Set PATH to include /usr/games
ENV PATH="/usr/games:${PATH}"

# Set the working directory
WORKDIR /usr/src/app

# Copy the Wisecow.sh script into the container
COPY wisecow.sh .

# Make the script executable
RUN chmod +x wisecow.sh

# Expose the port the script will listen on
EXPOSE 4499

# Define the command to run the script
CMD ["./wisecow.sh"]
