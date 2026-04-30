# Sonar BLE Radar

A real-time Bluetooth LE scanner visualized as a radar display.  
Detects nearby BLE devices and shows them on a sweeping sonar screen with device classification.

![Python](https://img.shields.io/badge/Python-3.8+-blue)
![Platform](https://img.shields.io/badge/Platform-Windows-lightgrey)
![License](https://img.shields.io/badge/License-MIT-green)

---

## Features

- Animated radar sweep with trailing glow effect
- Auto-classifies devices by brand and type (e.g. `Apple|AirPods Pro`, `ASUS|ROG`, `Xiaomi|Redmi 15 5G`)
- Smart label positioning — labels always face outward, never clip off screen
- Click any dot to copy device info to clipboard
- Device list panel sorted by signal strength (RSSI)
- Boot sequence animation on startup
- Resizable window + F11 fullscreen toggle
- Distance ring labels (~2m / ~5m / ~10m / ~20m)
- Power button in top-right corner

## Supported Device Classifications

| Brand | Detected Types |
|-------|---------------|
| Apple | iPhone (by model), iPad Pro/Air/Mini, MacBook Pro/Air, Mac Mini, AirPods (1st–Pro 2nd), AirTag, Watch |
| Samsung | Galaxy, Buds, Watch |
| Xiaomi | Redmi, POCO (with model name), Mi Band |
| ASUS | ROG, TUF, ZenBook, VivoBook, ProArt, ExpertBook |
| Lenovo | ThinkPad (X1/T14/E14…), Legion, Yoga, IdeaPad |
| Dell | XPS, Alienware, Inspiron, Latitude |
| HP | Spectre, Envy, Omen, Pavilion, EliteBook |
| Acer | Predator, Nitro, Swift, Aspire |
| MSI | Raider, Stealth, Katana, Pulse |
| Razer | Blade |
| Microsoft | Surface Pro/Laptop/Book, Xbox |
| Sony | Headphones (WH/WF), Xperia |
| Google | Pixel, Nest |
| Huawei | Watch, FreeBuds, MateBook |
| + more | OPPO, Vivo, Realme, Honor, JBL, Bose, Beats… |

---

## Requirements

- Windows 10 / 11
- Python 3.8+
- Bluetooth adapter

```
pip install bleak
```

---

## Usage

1. Place `sonar_ping.wav` in the same folder as the script
2. Run:

```
python BLE-Sonar-Radar.py
```

### Keybindings

| Key | Action |
|-----|--------|
| `F11` | Toggle fullscreen |
| `ESC` | Exit fullscreen |
| Click dot | Copy device info to clipboard |
| Power button | Close application |

---

## Notes

- RSSI-to-distance is an approximation only. Walls, interference, and device hardware all affect readings.
- Some devices (especially iPhones) randomize their MAC address periodically — they may appear as new entries after a while.
- Requires Bluetooth to be enabled on the host machine.

---

## License

MIT
