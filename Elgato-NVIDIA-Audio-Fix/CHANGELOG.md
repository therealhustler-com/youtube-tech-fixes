# 📝 Version History & Changelog

### [v2.0] - The Automated Memory Check (Recommended)
* **Added:** Active verification loop using `tasklist` to monitor system RAM for the `NVIDIA Broadcast.exe` binary.
* **Added:** 5-second driver buffer to ensure NVIDIA's TensorRT AI models fully hook into virtual endpoints before proceeding.
* **Changed:** Removed manual user input for a completely hands-off, automated boot sequence.

### [v1.0] - The Manual Fail-Safe
* **Initial Release:** Uses a manual `pause` command to halt script execution.
* **Behavior:** Forces the user to visually confirm NVIDIA Broadcast is running in the system tray before pressing a key to launch Wave Link.
* **Use Case:** 100% bulletproof fallback for older PCs, heavily bloated startup sequences, or systems with unpredictable NVMe load times.
