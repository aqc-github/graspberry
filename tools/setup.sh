#!/bin/bash

# Update and upgrade packages
sudo apt update && sudo apt upgrade -y

# Install essential packages
sudo apt install -y raspberrypi-kernel-headers build-essential git

# Create necessary directories if they don't exist
mkdir -p ../driver
mkdir -p ../specs
mkdir -p ../docs

echo "Setup complete. You can now proceed with building the driver using the instructions in the README."