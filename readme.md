# fw-407-FFG_Mini - Custom rusEFI Firmware

Welcome to the official repository for the **fw-407-FFG_Mini** custom firmware, based on the highly capable open-source [rusEFI](https://rusefi.com/) engine management system.

## 📝 Overview
This repository contains the customized firmware, configuration files, and documentation required to run rusEFI perfectly on the **FatFish Garage RusEFI Mini** custom hardware board. 

FFG Mini is a siple board ECU for 4 and 6 cylinder engines, with optional DBW function. It have a waterproof aluminium eclosure and an FCI 39 pin automotive connector

## ⚙️ Hardware Specifications
This custom firmware is configured to work with the following hardware specs:
* **Microcontroller:** STM32F405
* **Inputs:** 2x VR/Hall sensors, MAP, TPS, CLT, IAT, 3x analog inputs, 2x digital inputs
* **Outputs:** 4x Ignition, 4x Injection (optional 6x), VVT control, Optional DBW, FAN control, Tachometer output
* **Communication:** USB
* **Other specific features:** Onboard wideband controller for LSU 4.9

## 🚀 Features
* Full compatibility with **rusEFI console** and **TunerStudio**.
* Custom pinout configuration specifically tailored for the FFG Mini PCB.

## 🛠️ Installation & Flashing
To flash this custom firmware to your board, please follow these steps:
1. Download the latest compiled binary from the [Releases]([(https://github.com/fatfishgarage/fw-407_FFG_Mini/releases])page.
2. Connect your board via ST-Link ot USB.
3. Use the RusEFI console to update the firmware

## 📄 License
This project is licensed under the [GPL-3.0 License](LICENSE). 
*Note: Since this is based on rusEFI, it inherently inherits the GPLv3 open-source license structure.*
