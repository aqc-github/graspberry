# Development Setup for Graspberry

This document outlines the process and tools needed for developing the Graspberry EMG HAT driver.

## Required Tools

1. Raspberry Pi (preferably a Raspberry Pi 5) or a compatible development environment
2. Git
3. Build essentials (gcc, make, etc.)
4. Raspberry Pi kernel headers

## Setup Process

1. Run the setup script located in `/tools/setup.sh`. This script will:
   - Update and upgrade your system packages
   - Install necessary development tools and libraries
   - Create necessary project directories

2. After running the script, you can proceed with building the driver.

## Manual Setup (if not using the script)

If you prefer to set up manually or need to troubleshoot, follow these steps:

1. Update and upgrade packages:
   ```
   sudo apt update && sudo apt upgrade -y
   ```

2. Install essential packages:
   ```
   sudo apt install -y raspberrypi-kernel-headers build-essential git
   ```

3. Create necessary project directories:
   ```
   mkdir -p driver specs docs
   ```

## Building the Driver

1. Navigate to the driver directory:
   ```
   cd driver
   ```

2. Build the driver module:
   ```
   make
   ```

3. Install the driver:
   ```
   sudo insmod graspberry.ko
   ```

4. To load the driver automatically at boot, add it to /etc/modules:
   ```
   echo "graspberry" | sudo tee -a /etc/modules
   ```

## Developing the Driver

1. The main driver code is located in `driver/graspberry.c`.
2. Modify this file to implement the functionality for the Graspberry EMG HAT.
3. Update the Makefile in the `driver` directory if you add new source files.

## Testing the Driver

After building and installing the driver, you can check if it's loaded correctly:

1. Check kernel messages:
   ```
   dmesg | grep Graspberry
   ```

2. List loaded modules:
   ```
   lsmod | grep graspberry
   ```

For more detailed information on Linux kernel module development, consult the Linux kernel documentation and Raspberry Pi specific guides.