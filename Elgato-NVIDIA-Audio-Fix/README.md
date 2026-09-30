# 🔊 Elgato Wave Link & NVIDIA Broadcast Startup Fix

This script resolves the startup race condition on Windows where **Elgato Wave Link** and **NVIDIA Broadcast** conflict over virtual audio endpoints, causing crashed plugins, missing audio channels, or driver failures.

## 🛠️ What This Script Does
1. Temporarily stops and disables the `WavelinkSEService` background service.
2. Launches NVIDIA Broadcast.
3. Loops in the background checking system processes until it verifies NVIDIA Broadcast is fully loaded.
4. Re-enables and starts the Wave Link service cleanly.
5. Launches the Wave Link app.

---

## 📥 Installation Steps

1. **Disable Native Startup:**
   * Open Task Manager (`Ctrl + Shift + Esc`).
   * Go to the **Startup Apps** tab.
   * Right-click **Elgato Wave Link** and **NVIDIA Broadcast** and set both to **Disabled**.

2. **Download or Create the `.bat` File:**
   * Copy the `AudioFix.bat` file from this folder to a local directory on your PC (e.g., `C:\Scripts\`).

3. **Configure Desktop Shortcut:**
   * Right-click `AudioFix.bat` and select **Show more options > Create shortcut**.
   * Drag that shortcut to your Desktop.
   * Right-click the shortcut, go to **Properties > Shortcut > Advanced...**
   * Check **Run as administrator** and click **OK** -> **Apply**.

4. **Launch:**
   * Double-click your desktop shortcut on boot. A visible terminal window will confirm NVIDIA Broadcast has loaded before starting Wave Link and closing itself automatically.
