# Nintendo Switch Remote Game Installation Guide

> This guide covers all methods to install games from PC to Switch without removing the SD card, with detailed focus on USB-C connection via DBI.

## Overview of Remote Installation Methods

### Method 1: DBI USB Connection (Recommended - Detailed Below)
- **Connection**: USB-C cable between Switch and PC
- **Speed**: Fast (USB 2.0/3.0 speeds)
- **Reliability**: Very reliable, no network issues
- **Setup**: Simple, works immediately
- **Best for**: Most users, especially beginners

### Method 2: DBI WiFi Network Install
- **Connection**: Both devices on same WiFi network
- **Speed**: Moderate (depends on WiFi quality)
- **Reliability**: Good, but can have network interruptions
- **Setup**: Requires network configuration
- **Best for**: When USB connection isn't convenient

### Method 3: Tinfoil Network Sources
- **Connection**: Internet-based game repositories
- **Speed**: Varies by internet connection
- **Reliability**: Depends on source availability
- **Setup**: More complex configuration required
- **Best for**: Advanced users with reliable internet

### Method 4: sys-ftpd FTP Server
- **Connection**: FTP client to Switch over network
- **Speed**: Moderate (network dependent)
- **Reliability**: Good for background transfers
- **Setup**: Runs automatically with KEFIR
- **Best for**: Background file management

---

## Method 1: DBI USB-C Connection (Detailed Guide)

### What You Need

**Hardware**:
- Nintendo Switch with CFW (KEFIR) installed
- USB-C cable (USB-C to USB-A or USB-C to USB-C)
- PC with available USB port
- Game files (NSP format recommended)

**Software**:
- DBI installer (included with KEFIR)
- PC with Windows, macOS, or Linux

### Step-by-Step Setup Process

#### Step 1: Prepare Your Switch

1. **Boot into CFW**:
   - Power on Switch
   - Enter RCM mode (jig + POWER + VOL+)
   - Inject payload (hekate)
   - Select your desired boot environment (SysNAND CFW or EmuNAND)

2. **Launch DBI**:
   - Hold **L button** and open **Album** app (Homebrew Launcher)
   - Navigate to and select **DBI**
   - DBI main menu will appear

#### Step 2: Enable MTP Mode

1. **In DBI main menu**:
   - Select **"Run MTP responder"**
   - You'll see a screen showing "MTP responder started"
   - Switch will display connection status

2. **Alternative path** (if "Run MTP responder" not visible):
   - Select **"Browse and install files"**
   - Choose **"Browse installed applications"**
   - Press **Y button** to start MTP mode

#### Step 3: Connect USB Cable

1. **Connect Switch to PC**:
   - Use USB-C cable to connect Switch to PC
   - **USB-C to USB-A**: Most common, works with any PC
   - **USB-C to USB-C**: Faster, requires USB-C port on PC

2. **PC Recognition**:
   - **Windows**: Switch appears as removable drive in File Explorer
   - **macOS**: Switch appears on desktop and in Finder
   - **Linux**: Appears in file manager (may need MTP support packages)

#### Step 4: Transfer Game Files

1. **Open Switch Storage**:
   - Double-click the Switch drive on your PC
   - You'll see folders like `Nintendo`, `switch`, `atmosphere`

2. **Create Install Folder** (recommended):
   - Create a new folder called `install` or `games`
   - This keeps your files organized

3. **Copy Game Files**:
   - Copy your NSP game files to the `install` folder
   - **Transfer speeds**: 15-30 MB/s typical
   - **Large games**: May take 10-30 minutes per game

#### Step 5: Install Games via DBI

1. **Exit MTP Mode**:
   - Press **B button** on Switch to exit MTP responder
   - Return to DBI main menu

2. **Navigate to Games**:
   - Select **"Browse and install files"**
   - Navigate to your `install` folder
   - You'll see your copied NSP files

3. **Install Process**:
   - Select the NSP file you want to install
   - Choose **"Install"**
   - Select installation location:
     - **SD Card**: Recommended for most users
     - **NAND**: Internal storage (limited space)
   - Wait for installation to complete

#### Step 6: Verify Installation

1. **Check Installation**:
   - Return to Switch home screen
   - Your game should appear in the game library
   - Try launching the game to verify it works

2. **Clean Up**:
   - You can delete the NSP files from the `install` folder after successful installation
   - Or keep them for backup/reinstallation

### USB Connection Troubleshooting

#### Common Issues and Solutions

**Switch Not Appearing on PC**:
- Try different USB cable (some are charging-only)
- Try different USB port on PC
- Restart DBI and try MTP mode again
- Check if USB drivers are installed (Windows)

**Slow Transfer Speeds**:
- Use USB 3.0 ports (blue connectors) if available
- Use higher quality USB cables
- Close other programs using USB bandwidth
- Ensure Switch isn't going to sleep during transfer

**Connection Drops During Transfer**:
- Disable USB selective suspend (Windows)
- Keep Switch plugged into power during transfer
- Use shorter, higher quality USB cables
- Avoid moving the Switch during transfer

**Files Not Visible in DBI**:
- Check file format (NSP recommended, XCI may need conversion)
- Verify files aren't corrupted
- Try placing files in root directory instead of subfolder

---

## Power Management and Payload Re-injection

### Understanding the Power Cycle

**Key Facts**:
- ✅ **Fusée Gelée is "tethered"** - requires payload injection after every full power off
- ✅ **Sleep mode preserves CFW** - no re-injection needed
- ✅ **Complete power off clears RAM** - payload must be re-injected

### Power States Explained

#### Sleep Mode (Recommended for Short Breaks)
**How to activate**: Press POWER button briefly (don't hold)
**What happens**:
- Screen turns off, system enters low power mode
- CFW remains loaded in memory
- USB connections may disconnect but system stays ready
- Wake up by pressing any button

**Benefits**:
- No payload re-injection needed
- Quick resume
- Perfect for breaks up to 12-24 hours

**Limitations**:
- Battery slowly drains (1-3% per hour)
- May disconnect USB during deep sleep

#### Complete Power Off
**How to activate**: Hold POWER button for 12+ seconds OR select "Power Options" → "Power Off"
**What happens**:
- All memory cleared
- CFW completely removed
- Next boot requires full payload injection process

**When to use**:
- Long periods of non-use (days/weeks)
- When battery is very low
- Before removing SD card
- When troubleshooting issues

### Daily Usage Recommendations

#### For Active Users (Daily Gaming)
```
Morning: Inject Payload → Use all day in sleep mode → Night: Sleep mode
Next Day: Wake up (no re-injection) → Continue usage
```

#### For Occasional Users
```
Usage Session: Inject Payload → Use → Power off when done
Next Session: Re-inject Payload → Use → Power off
```

#### For Heavy File Management
```
Plan transfers during active usage periods
Use sleep mode between multiple transfer sessions
Power off only when completely finished for extended time
```

---

## Advanced Remote Installation Methods

### Method 2: DBI WiFi Network Mode

#### Setup Process
1. **Switch Setup**:
   - Launch DBI
   - Select **"Run network install server"**
   - Note the IP address displayed (e.g., 192.168.1.100:12345)

2. **PC Setup**:
   - Open web browser
   - Navigate to the IP address shown on Switch
   - Upload NSP files through web interface

3. **Installation**:
   - Files upload directly to Switch
   - Install through DBI interface

#### Benefits and Limitations
**Benefits**:
- No USB cables needed
- Can work from anywhere on same network
- Multiple file uploads possible

**Limitations**:
- Slower than USB (typically 5-15 MB/s)
- Requires stable WiFi
- More setup steps

### Method 3: sys-ftpd Background Server

#### How It Works
- **Automatic**: Included and running with KEFIR
- **Background operation**: Works while playing games
- **FTP access**: Use any FTP client to connect

#### Setup Process
1. **Find Switch IP**:
   - System Settings → Internet → Test Connection
   - Note the IP address

2. **Connect via FTP**:
   - **Server**: Switch IP address
   - **Port**: 5000 (default)
   - **Username**: (none required)
   - **Password**: (none required)

3. **Transfer Files**:
   - Navigate to `/switch/` folder
   - Upload NSP files
   - Install via DBI when convenient

#### Recommended FTP Clients
- **Windows**: WinSCP, FileZilla
- **macOS**: Cyberduck, FileZilla
- **Linux**: FileZilla, command line FTP

---

## Convenience Solutions to Reduce Re-injection Frequency

### Option 1: AutoRCM (Semi-Permanent Solution)

#### What AutoRCM Does
- Modifies console to automatically enter RCM on power-on
- No jig needed - just inject payload after power-on
- Faster boot process

#### Setup Process
1. **Boot into Hekate**
2. **Navigate to**: Tools → Archive bit - AutoRCM
3. **Set AutoRCM to "ON"**
4. **Confirm changes**

#### ⚠️ **CRITICAL WARNING**
**NEVER use AutoRCM with Caffeine exploit - WILL BRICK YOUR CONSOLE!**

#### Benefits and Drawbacks
**Benefits**:
- No jig required
- Faster daily boot process
- Consistent RCM entry

**Drawbacks**:
- Cannot boot to stock firmware without payload
- Harder to determine if console is truly off
- Still requires payload injection after power off

### Option 2: Modchip Installation (Permanent Solution)

#### What Modchips Provide
- Automatic payload injection on power-on
- No user intervention required
- Can boot to multiple environments automatically

#### Considerations
- **Cost**: $80-250 including professional installation
- **Warranty**: Voids console warranty
- **Complexity**: Requires professional soldering for most users
- **Reliability**: Most permanent and convenient solution

#### When to Consider Modchip
- Heavy daily usage
- Multiple users in household
- Want "just works" experience
- Don't mind the cost and warranty implications

---

## Best Practices and Recommendations

### File Management Strategy
1. **Use USB-C connection for large transfers** (fastest, most reliable)
2. **Use WiFi/FTP for small files** (convenient for occasional files)
3. **Plan transfers during active gaming sessions**
4. **Keep Switch in sleep mode between sessions**
5. **Only power off for extended non-use periods**

### Organizing Your Workflow
```
Daily Routine:
Morning → Inject Payload → Active Usage/Transfers → Sleep Mode
Evening → Continue from Sleep → More Usage → Sleep Mode Overnight
Weekend → Extended gaming sessions with file management
```

### Safety and Backup Considerations
- **Always backup saves** before major file transfers
- **Verify game installations** before deleting source files
- **Keep NAND backup current** in case of issues
- **Monitor SD card health** with heavy file transfer usage

---

## Quick Reference Commands

### DBI USB Connection (Simplified)
1. Launch DBI → "Run MTP responder"
2. Connect USB-C cable
3. Copy files to Switch drive on PC
4. Exit MTP → Browse files → Install

### Sleep vs Power Off Decision
- **Use Sleep Mode**: Breaks under 24 hours
- **Use Power Off**: Extended storage, battery preservation, SD card changes

### Emergency Recovery
If something goes wrong during installation:
1. Power off completely (hold POWER 12+ seconds)
2. Re-inject payload and boot normally
3. Check [troubleshooting guide](troubleshooting.md) for specific issues
4. Restore NAND backup if needed (last resort)

---

This guide provides complete coverage of remote installation methods with detailed focus on the USB-C connection method you requested. The USB-C approach offers the best balance of speed, reliability, and simplicity for most users.