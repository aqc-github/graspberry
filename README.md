# graspberry

Graspberry is a Raspberry Pi 5 project divided into two standalone mini-projects for EMG (Electromyography) signal processing and classification.

## Project Structure

- `/hardware` - Schematics and designs for the custom EMG HAT
- `/emg_capture` - EMG Data Capture mini-project
- `/emg_classify` - EMG Classification mini-project
- `/models` - Pre-trained classification models (gitignored)

## 1. EMG Data Capture (`/emg_capture`)

### Overview
This mini-project provides tools for capturing surface EMG (sEMG) signals using a Raspberry Pi 5 and a custom HAT (Hardware Attached on Top).

### Features
- Real-time sEMG signal acquisition from custom HAT via GPIO pins
- Data storage and basic visualization
- Experiment configuration and management

### Usage
1. Ensure the custom EMG HAT is connected to Raspberry Pi 5
2. Run the capture script:
   ```
   python emg_capture/capture.py
   ```
3. Follow on-screen instructions to start/stop data capture

## 2. EMG Classification (`/emg_classify`)

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
- EMG electrodes and cables

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

2. Build the custom HAT using schematics provided in the `/hardware` directory

3. Install required Python packages:
   ```
   pip install -r requirements.txt
   ```

4. Follow specific setup instructions in each mini-project's directory

## Contributing

Contributions to both mini-projects are welcome! Please submit pull requests or create issues for either project.

## License

[Specify your license here, e.g., MIT, GPL, etc.]

## Acknowledgements

- [List any libraries, resources, or individuals you want to acknowledge]
