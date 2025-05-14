# Troubleshooting Guide

This page contains solutions for common technical issues you might encounter while playing on Red Zone RP.

## System Requirements

Before troubleshooting, ensure your system meets our recommended specifications:

### Minimum Requirements
- **CPU:** Intel Core i5-4670K or AMD FX-8350
- **RAM:** 8GB
- **GPU:** NVIDIA GeForce GTX 760 or AMD Radeon R9 280
- **Storage:** 95GB for GTA V + 7GB for FiveM
- **Internet:** 5Mbps download, stable connection

### Recommended Specifications
- **CPU:** Intel Core i7-8700K or AMD Ryzen 5 3600
- **RAM:** 16GB
- **GPU:** NVIDIA GeForce GTX 1070 or AMD Radeon RX 5700
- **Storage:** 95GB SSD for GTA V + 7GB for FiveM
- **Internet:** 15Mbps download, stable connection

## Connection Issues

### Unable to Connect to Server

1. **Check Server Status**
   - Visit our Discord #server-status channel to check if the server is online
   - Server restarts daily at 4:00 AM EST, which may cause temporary disconnection

2. **Firewall/Antivirus Settings**
   - Add FiveM to your firewall/antivirus exceptions
   - Temporarily disable your firewall/antivirus to test if it's blocking the connection

3. **DNS Issues**
   - Try using alternative DNS servers like Google DNS (8.8.8.8 and 8.8.4.4)
   - Flush your DNS cache by running `ipconfig /flushdns` in Command Prompt

4. **Direct Connection**
   - Try connecting using the direct IP: `connect 123.45.67.89:30120` (placeholder IP)

### Frequent Disconnections

1. **Internet Stability**
   - Run a speed test at [speedtest.net](https://www.speedtest.net)
   - Check for packet loss using `ping -t 8.8.8.8` in Command Prompt
   - Try using a wired connection instead of Wi-Fi

2. **Background Applications**
   - Close bandwidth-heavy applications (downloads, streaming, etc.)
   - Ensure no other applications are interfering with FiveM

3. **VPN Issues**
   - If using a VPN, try connecting without it
   - Some VPNs can cause latency issues with FiveM

## Performance Optimization

### Low FPS

1. **In-Game Settings**
   - Lower GTA V graphics settings, particularly:
     - Shadows
     - Reflections
     - Post FX
     - Grass quality
   - Set texture quality to match your GPU's VRAM

2. **FiveM Settings**
   - Open FiveM settings (Settings icon > Client settings)
   - Enable "Game performance" mode
   - Reduce "Long shadow distance"
   - Disable "High detail streaming while driving"

3. **System Optimizations**
   - Update GPU drivers to the latest version
   - Close unnecessary background applications
   - Set GTA V process priority to "High" in Task Manager
   - Enable "Game Mode" in Windows settings

### Stuttering/Freezing

1. **Clear Cache Files**
   - Navigate to `%localappdata%\FiveM\FiveM Application Data\cache`
   - Delete all files in the cache folder (not the folder itself)
   - Restart FiveM and reconnect

2. **Shader Cache**
   - In your GPU control panel, clear and reset shader cache
   - For NVIDIA: NVIDIA Control Panel > Manage 3D settings > Reset shader cache

3. **Resource Monitor**
   - Check if any specific resource is causing high usage
   - Open Task Manager > Performance tab to monitor system resources

## Game Crashes

### Crash on Startup

1. **Verify Game Files**
   - Steam: Right-click GTA V > Properties > Local Files > Verify integrity of game files
   - Epic: Library > GTA V > ... > Verify
   - Rockstar: Settings > GTA V > Verify game files

2. **Reinstall FiveM Client**
   - Uninstall FiveM
   - Delete remaining files in `%localappdata%\FiveM`
   - Download and install a fresh copy

3. **Windows Updates**
   - Ensure Windows is fully updated
   - Check for .NET Framework and Visual C++ Redistributable updates

### Crash During Gameplay

1. **Graphics Driver Issues**
   - Update to the latest stable driver (avoid beta drivers)
   - If recently updated, consider rolling back to a previous version

2. **Overheating**
   - Monitor CPU and GPU temperatures
   - Clean dust from computer fans and heat sinks
   - Ensure proper ventilation

3. **Corrupt Game Files**
   - Delete and reinstall custom mods if applicable
   - Verify GTA V file integrity

## Audio/Visual Issues

### No Sound

1. **FiveM Audio Settings**
   - Check "Mute in background" option in FiveM settings
   - Ensure correct audio device is selected

2. **Windows Sound Settings**
   - Set correct default playback device
   - Check application volume in Windows mixer

### Visual Glitches

1. **Graphics Settings**
   - Try different DirectX versions in GTA V settings
   - Disable advanced graphics options

2. **Resolution Issues**
   - Use native display resolution
   - Try borderless windowed mode instead of fullscreen

## Getting Additional Help

If you're still experiencing issues after trying these solutions:

1. **Discord Support**
   - Visit our #technical-support channel
   - Provide detailed information about your issue
   - Include system specifications and error messages

2. **Contact Staff In-Game**
   - Use `/report` to notify online staff about technical issues

3. **Submit a Bug Report**
   - Use our bug tracking form at [redzonerp.com/bugs](https://redzonerp.com/bugs)
   - Include steps to reproduce the issue

---

Remember to be patient while troubleshooting - some issues might require multiple steps to resolve. 