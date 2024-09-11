# Graspberry

Graspberry is a project that includes a custom driver for an EMG (Electromyography) HAT for Raspberry Pi 5.

## Project Structure

- `/driver` - Custom Graspberry HAT driver
- `/tools` - Build and helper scripts
- `/specs` - Hardware specifications and schematics for the custom Graspberry HAT
- `/docs` - Project documentation

## Building the Driver

### Automatic:

1. Run the setup script:
   ```
   ./tools/setup.sh
   ```
2. Build the driver:
   ```
   cd driver
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

### Manual:

1. Ensure you have the necessary dependencies:
   ```
   sudo apt update && sudo apt upgrade -y
   sudo apt install -y raspberrypi-kernel-headers build-essential git
   ```

2. Build the driver:
   ```
   cd driver
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

## Custom Graspberry HAT

Specifications and schematics for the custom Graspberry HAT can be found in the `/specs` directory.

## Contributing

Contributions are welcome! Please submit pull requests or create issues.

## License

[GNU General Public License v2.0]

## Acknowledgements

- Raspberry Pi Foundation
- Linux Kernel community
- My brother for pushing me to do more
