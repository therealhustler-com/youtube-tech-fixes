# 🎮 BattlEye Anti-Cheat & Network Reset

This script resolves stubborn BattlEye launch errors that that lead to the dreaded "kicked by Battleye" message, through purging corrupted anti-cheat services and resetting your local network cache.

## 🛠️ What This Script Does
1. **`sc delete beservice`**: Completely uninstalls the corrupted BattlEye Windows service, forcing your game to install a clean version on its next launch.
2. **`ipconfig & netsh winsock reset`**: Clears your DNS cache, releases your IP address, and resets your network adapters to fix connection blocks to the BattlEye authentication servers.
3. **`shutdown -r -t 30`**: Automatically restarts your PC in 30 seconds to safely apply all changes.

---

## 📥 Usage Instructions

1. **Download the File:**
   * Save the `BattlEye-Reset.bat` file to your PC.
2. **Run as Administrator (Required):**
   * Right-click the `.bat` file and select **Run as Administrator**. 
   * *Note: If you do not run as Admin, Windows will block the script from deleting the corrupted service.*
3. **Let it Reboot:**
   * A command prompt will appear, run the network resets, and give you a 30-second warning before restarting your PC. Save any open work!
4. **Launch Your Game:**
   * Open Steam/Epic/Ubisoft and launch your game. The launcher will automatically reinstall a fresh copy of BattlEye.
