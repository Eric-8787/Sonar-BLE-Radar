# Sonar BLE Radar

![Python](https://img.shields.io/badge/Python-3.8+-blue)
![Platform](https://img.shields.io/badge/Platform-Windows-lightgrey)
![License](https://img.shields.io/badge/License-MIT-green)

A real-time Bluetooth Low Energy (BLE) scanner visualized as an animated radar interface.

This application continuously scans for nearby BLE devices and maps them onto a radar-style display. Each device is represented as a dynamic point, with its position estimated based on signal strength.

## Table of Contents

- [How It Works](#how-it-works)
- [Features](#features)
- [Supported Device Classification](#supported-device-classification)
- [Requirements](#requirements)
- [Getting Started](#getting-started)
- [Controls](#controls)
- [Configuration](#configuration)
- [Troubleshooting](#troubleshooting)
- [Notes & Limitations](#notes--limitations)
- [Contributing](#contributing)
- [License](#license)

---

## How It Works

The system operates in three stages:

1. **Scanning:** Continuously scans for nearby BLE devices using Python BLE libraries.

2. **Signal Processing:** Uses RSSI (signal strength) to estimate relative distance.

3. **Visualization:** Devices are rendered as radar points:
   - Strong signal → closer to center  
   - Weak signal → farther away  
   - Radar sweep updates positions in real time  

Additional behavior:
- Devices are automatically classified by **brand and type**
- A side panel lists all detected devices sorted by signal strength

---

## Features

- Animated radar sweep with trailing glow effect  
- Real-time BLE scanning  
- Auto-classification by brand and device type  
- Smart label positioning (always readable, never clipped)  
- Click any device to copy its information to clipboard  
- Device list panel sorted by RSSI  
- Boot sequence animation on startup  
- Resizable window + fullscreen (F11)  
- Distance rings (~2m / ~5m / ~10m / ~20m)  
- Power button UI to exit application  

---

## Supported Device Classification

| Brand     | Detected Types |
|-----------|----------------|
| Apple     | iPhone, iPad, MacBook, AirPods, AirTag, Watch |
| Samsung   | Galaxy, Buds, Watch |
| Xiaomi    | Redmi, POCO, Mi Band |
| ASUS      | ROG, TUF, ZenBook, VivoBook |
| Lenovo    | ThinkPad, Legion, Yoga |
| Dell      | XPS, Alienware, Inspiron |
| HP        | Spectre, Envy, Omen |
| Acer      | Predator, Nitro, Swift |
| MSI       | Raider, Stealth, Katana |
| Razer     | Blade |
| Microsoft | Surface, Xbox |
| Sony      | Headphones, Xperia |
| Google    | Pixel, Nest |
| Huawei    | Watch, FreeBuds |
| Others    | OPPO, Vivo, Realme, JBL, Bose, Beats |

---

## Requirements

- Windows 10 / 11  
- Python 3.8+ (with `tkinter` and `winsound` available, usually included by default)
- Bluetooth adapter  

---

## Getting Started

### Installation

1. Clone the repository:
   ```bash
   git clone https://github.com/Eric-8787/Sonar-BLE-Radar.git
   cd Sonar-BLE-Radar
   ```

2. Install dependencies:
   ```bash
   pip install bleak
   ```

3. Prepare assets:
   Ensure the sound file is located in the exact same directory as the main python script:
   ```text
   sonar_ping.wav
   ```

### Run the Application

**Option A: Quick Start (Batch File)**  
Simply double-click `BLE-Sonar-Radar.bat` to launch the application.

**Option B: Command Line**  
Open your terminal and run:
```bash
python BLE-Sonar-Radar.py
```

**Option C: Custom PowerShell Command**  
If you want to launch the radar quickly from anywhere using PowerShell, you can add a custom function to your PowerShell profile.

Type this in your PowerShell:
```powershell
notepad $PROFILE
```

Now add this script to your PowerShell profile:

```powershell
function run {
    param(
        [string]$arg1,
        [string]$arg2,
        [string]$arg3
    )

    if ($arg1 -eq "Sonar" -and $arg2 -eq "BLE" -and $arg3 -eq "Radar") {
        Write-Host "Starting up Sonar BLE Radar 4.5..."
        Write-Host "Starting up..."
        Write-Host "loading..."

        # ⚠️ Replace the path below with your actual file location
        python "C:\YourPath\BLE-Sonar-Radar.py"
    }
}
```

Once saved and reloaded, you can run the app simply by typing:
```powershell
run Sonar BLE Radar
```

---

## Controls

| Input        | Action            |
| ------------ | ----------------- |
| F11          | Toggle fullscreen |
| ESC          | Exit fullscreen   |
| Click dot    | Copy device info  |
| Power button | Exit application  |

---

## Configuration

You can customize the application behavior by editing the following values in `BLE-Sonar-Radar.py`:

- `SCAN_INTERVAL`: Time between BLE scans (in milliseconds)
- `DISTANCE_RINGS`: Adjust distance ring thresholds (in meters)
- `MAX_DEVICES`: Maximum number of devices to display on the radar
- `UPDATE_FREQUENCY`: How often the radar updates (in milliseconds)

---

## Troubleshooting

**No devices detected**
- Ensure Bluetooth is enabled on your system
- Check that other BLE devices are powered on and nearby
- Try restarting the application

**Sound issues**
- Verify `sonar_ping.wav` exists in the application directory
- Check your system volume settings
- Ensure your audio device is connected

**Performance lag or high CPU usage**
- Reduce the number of devices being scanned
- Increase the `SCAN_INTERVAL` value
- Close other applications consuming system resources

**Application crashes on startup**
- Verify all dependencies are installed: `pip install -r requirements.txt`
- Ensure Python 3.8+ is installed: `python --version`
- Check that `tkinter` is available (usually included with Python)

---

## Notes & Limitations

* Distance estimation is **approximate only**
  (RSSI is affected by walls, interference, and hardware differences)

* Some devices (e.g., iPhones) use **MAC randomization**
  → may appear as new devices over time

* Bluetooth must be enabled on the host machine

* Performance depends on the number of BLE devices in range

* RSSI values vary by device hardware and antenna design

* Not suitable for precise location tracking (use UWB for that)

---
## Security & Privacy

- **Local Operation**: This application runs entirely on your machine. No data is sent to external servers.
- **MAC Address Collection**: The app captures MAC addresses of nearby BLE devices. Only use in environments where you have permission to scan.
- **Data Retention**: Device information is displayed only during the current session and is cleared when the application closes.
- **Clipboard Access**: Clicking devices copies their information to your clipboard. Be cautious when pasting into untrusted applications.
- **Bluetooth Privacy**: Some devices (like iPhones) use MAC randomization, so MAC addresses may not reliably identify specific devices over time.
---

## Contributing

Contributions are welcome! To contribute:

1. Fork the repository
2. Create a feature branch: `git checkout -b feature/your-feature`
3. Commit your changes: `git commit -m 'Add your feature'`
4. Push to the branch: `git push origin feature/your-feature`
5. Submit a pull request

---

## License

This project is licensed under the MIT License - see [LICENSE](LICENSE) file for details.
