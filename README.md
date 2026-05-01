# Sonar BLE Radar

![Python](https://img.shields.io/badge/Python-3.8+-blue)
![Platform](https://img.shields.io/badge/Platform-Windows-lightgrey)
![License](https://img.shields.io/badge/License-MIT-green)

A real-time Bluetooth Low Energy (BLE) scanner visualized as an animated radar interface.

This application continuously scans for nearby BLE devices and maps them onto a radar-style display. Each device is represented as a dynamic point, with its position estimated based on signal strength (RSSI). A rotating radar sweep provides a real-time, intuitive visualization of surrounding Bluetooth activity.

---

## How It Works

The system operates in three stages:

1. **Scanning** Continuously scans for nearby BLE devices using Python BLE libraries.

2. **Signal Processing** Uses RSSI (signal strength) to estimate relative distance.

3. **Visualization** Devices are rendered as radar points:
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

Install dependencies:

```bash
pip install bleak
```

---

## Getting Started

### 1. Prepare assets

Ensure the sound file is located in the exact same directory as the main python script:

```text
sonar_ping.wav
```

### 2. Run the application

[cite_start]**Option A: Quick Start (Batch File)** [cite: 1]
Simply double-click `BLE-Sonar-Radar.bat` to launch the application.

**Option B: Command Line**
Open your terminal and run:
```bash
python BLE-Sonar-Radar.py
```

**Option C: Custom PowerShell Command**
If you want to launch the radar quickly from anywhere using PowerShell, you can add a custom function to your PowerShell profile.

👉 Edit your PowerShell profile (usually located at `$PROFILE`) and add:

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

## Notes & Limitations

* Distance estimation is **approximate only**
  (RSSI is affected by walls, interference, and hardware differences)

* Some devices (e.g., iPhones) use **MAC randomization**
  → may appear as new devices over time

* Bluetooth must be enabled on the host machine
```
