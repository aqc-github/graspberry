# graspberry

Graspberry is a Raspberry Pi 5 project divided into two standalone mini-projects for EMG (Electromyography) signal processing and classification.

## Project Structure

1. **EMG Data Capture** (`/emg_capture`)
   - Hardware design and software for capturing sEMG signals
   - Real-time data acquisition and storage

2. **EMG Classification** (`/emg_classify`)
   - Real-time classification of EMG signals using pre-trained models

## 1. EMG Data Capture

### Overview
This mini-project provides tools for capturing surface EMG (sEMG) signals using a Raspberry Pi 5 and a custom HAT (Hardware Attached on Top).

### Features
- Real-time sEMG signal acquisition from custom HAT via GPIO pins
- Data storage and basic visualization
- Experiment configuration and management

### Hardware
- Raspberry Pi 5
- Custom EMG HAT (schematics provided)
- EMG electrodes and cables

### Usage
1. Build the custom HAT using provided schematics
2. Connect the HAT to Raspberry Pi 5
3. Run the capture script:
   ```
   python emg_capture/capture.py
   ```
4. Follow on-screen instructions to start/stop data capture

## 2. EMG Classification

### Overview
This mini-project uses pre-trained models to classify EMG signals in real-time.

### Features
- Real-time EMG signal classification
- Support for multiple classification models
- Low-latency processing for responsive feedback

### Usage
1. Ensure the EMG HAT is connected
2. Place a pre-trained model binary in the `models` directory
3. Run the classification script:
   ```
   python emg_classify/classify.py --model models/your_model.bin
   ```
4. Perform muscle actions to see real-time classification results

## Common Requirements

### Hardware
- Raspberry Pi 5
- Custom EMG HAT (schematics in `/hardware`)

### Software Dependencies
- Python 3.x
- NumPy
- SciPy
- scikit-learn
- RPi.GPIO

## Installation

1. Clone the repository:
   ```
   git clone https://github.com/aqc-github/graspberry.git
   cd graspberry
   ```

2. Install required Python packages:
   ```
   pip install -r requirements.txt
   ```

3. Follow specific setup instructions in each mini-project's directory

## Contributing

Contributions to both mini-projects are welcome! Please submit pull requests or create issues for either project.

## License

[Specify your license here, e.g., MIT, GPL, etc.]

## Acknowledgements

- [List any libraries, resources, or individuals you want to acknowledge]
