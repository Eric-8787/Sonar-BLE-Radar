# Sonar BLE Radar

![Python](https://img.shields.io/badge/Python-3.8+-blue)
![Platform](https://img.shields.io/badge/Platform-Windows-lightgrey)
![License](https://img.shields.io/badge/License-MIT-green)

A real-time Bluetooth Low Energy (BLE) scanner visualized as an animated radar interface.

This application continuously scans for nearby BLE devices and maps them onto a radar-style display. Each device appears as a moving dot, with its position dynamically estimated based on signal strength (RSSI). The sweeping radar animation mimics traditional sonar, providing an intuitive way to observe nearby Bluetooth activity.

---

## How It Works

The system operates in three main stages:

1. **Scanning**  
   Continuously scans for nearby BLE devices using Python BLE libraries.

2. **Signal Processing**  
   RSSI (signal strength) is used to estimate relative distance.

3. **Visualization**  
   Devices are rendered on a radar interface:
   - Stronger signal → closer to center  
   - Weaker signal → farther away  
   - Radar sweep updates positions in real time  

Additional behavior:
- Devices are automatically classified by **brand and type**
- A side panel lists devices sorted by signal strength

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
|----------|----------------|
| Apple    | iPhone, iPad, MacBook, AirPods, AirTag, Watch |
| Samsung  | Galaxy, Buds, Watch |
| Xiaomi   | Redmi, POCO, Mi Band |
| ASUS     | ROG, TUF, ZenBook, VivoBook |
| Lenovo   | ThinkPad, Legion, Yoga |
| Dell     | XPS, Alienware, Inspiron |
| HP       | Spectre, Envy, Omen |
| Acer     | Predator, Nitro, Swift |
| MSI      | Raider, Stealth, Katana |
| Razer    | Blade |
| Microsoft| Surface, Xbox |
| Sony     | Headphones, Xperia |
| Google   | Pixel, Nest |
| Huawei   | Watch, FreeBuds |
| Others   | OPPO, Vivo, Realme, JBL, Bose, Beats |

---

## Requirements

- Windows 10 / 11  
- Python 3.8+  
- Bluetooth adapter  

Install dependency:

```bash
pip install bleak
