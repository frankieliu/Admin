# Nintendo Switch Storage Management and Game Installation Process

> This guide explains how game storage works during installation, why you might see multiple copies, and how to manage storage efficiently.

## Game Installation Storage Process

### **What You're Observing is Correct**

Yes, during the DBI installation process, you temporarily have **two copies** of the game on your SD card:

1. **Source file** (NSP file you copied for installation)
2. **Installed game** (processed and installed into the system)

### **The Installation Flow:**
```
PC → Copy NSP to SD card → DBI reads NSP → Installs to system → Delete source NSP
  ↑                        ↑                 ↑                    ↑
Game file              Source copy      Installed copy      Cleanup step
```

---

## Storage Breakdown During Installation

### **Step-by-Step Storage Usage:**

#### **Step 1: Initial Transfer**
- **USB-C transfer**: Copy 8GB game NSP to `/install/` folder
- **Storage used**: 8GB for source file
- **System games**: 0GB (nothing installed yet)

#### **Step 2: During Installation**
- **DBI processes**: Reads NSP and installs to system
- **Storage used**: 8GB source + 8GB being installed = **16GB total**
- **Peak usage**: This is when you see maximum storage consumption

#### **Step 3: After Installation**
- **Game installed**: Now appears in system menu
- **Storage used**: 8GB source + 8GB installed = **16GB total**
- **Still have both**: Source NSP and installed game

#### **Step 4: Cleanup (Recommended)**
- **Delete source NSP**: Remove from `/install/` folder
- **Storage used**: 8GB installed game only
- **Final state**: Only the installed game remains

---

## Understanding Game Storage Locations

### **Where Games Are Actually Stored:**

#### **EmuMMC Game Storage:**
- **Location**: Inside the EmuMMC partition/files
- **Path**: Part of the emulated system storage
- **Size**: Part of your 32GB (or 64GB for OLED) EmuMMC allocation

#### **Source Files (Temporary):**
- **Location**: Anywhere on SD card (e.g., `/install/` folder)
- **Purpose**: Raw installation files
- **Can be deleted**: After successful installation

### **Storage Architecture:**
```
SD Card Structure:
├── /emummc/ (32GB/64GB - Your EmuNAND system)
│   └── Installed games live here
├── /atmosphere/ (CFW files)
├── /switch/ (Homebrew apps)
├── /install/ (Your source NSP files - TEMPORARY)
└── Other folders...
```

---

## Storage Efficiency Best Practices

### **Method 1: Install and Delete (Recommended)**
1. **Copy NSP to SD card** via USB-C
2. **Install via DBI** to EmuMMC
3. **Verify game works** (launch and test)
4. **Delete source NSP** from `/install/` folder
5. **Keep only installed game**

**Storage savings**: ~50% (keep only installed copy)

### **Method 2: Direct Network Install (Most Efficient)**
1. **Use DBI network install** from PC
2. **Game streams directly** during installation
3. **No source files left** on SD card
4. **Only installed game remains**

**Storage savings**: Maximum efficiency, no temporary files

### **Method 3: Batch Processing**
1. **Install multiple games** in one session
2. **Test all installations work**
3. **Delete all source NSPs** at once
4. **Clean up in batches**

**Storage savings**: Efficient workflow, less repeated cleanup

---

## Storage Planning Guide

### **Calculate Required Storage:**

#### **For Single Game Installation:**
- **Peak requirement**: Game size × 2 (source + installed)
- **Final requirement**: Game size × 1 (installed only)
- **Example**: 8GB game needs 16GB peak, 8GB final

#### **For Multiple Games:**
- **Install one at a time**: Game size × 2 per installation
- **Batch installation**: (All games combined) × 2 peak
- **Strategy matters**: Plan your approach based on SD card size

### **SD Card Size Recommendations:**

| SD Card Size | EmuMMC Size | Available Space | Games Capacity |
|--------------|-------------|-----------------|----------------|
| **64GB** | 32GB | ~25GB | 2-4 large games |
| **128GB** | 32GB | ~85GB | 8-12 large games |
| **256GB** | 32GB | ~210GB | 20+ large games |
| **512GB** | 32GB | ~460GB | 40+ large games |

*Note: OLED Switch uses 64GB for EmuMMC, reducing available space*

---

## Managing Source Files

### **Organizing Your Workflow:**

#### **Create Dedicated Folders:**
```
SD Card Root:
├── /install/          (Temporary NSP files)
├── /install-done/     (Backup of installed NSPs)
├── /install-queue/    (NSPs waiting to install)
└── /backups/          (Game save backups)
```

### **File Management Strategies:**

#### **Strategy 1: Delete Immediately**
- **Process**: Install → Test → Delete source
- **Pros**: Maximum storage efficiency
- **Cons**: Need to re-download if reinstallation needed

#### **Strategy 2: Archive Confirmed Installs**
- **Process**: Install → Test → Move to `/install-done/`
- **Pros**: Keep sources for reinstallation
- **Cons**: Uses more storage

#### **Strategy 3: PC Backup**
- **Process**: Install → Test → Delete from SD → Keep copy on PC
- **Pros**: Best of both worlds
- **Cons**: Requires PC storage management

---

## Network Installation to Avoid Duplicates

### **DBI Network Install Process:**

#### **Setup (One-time):**
1. **Launch DBI** on Switch
2. **Select "Run MTP responder"**
3. **Connect USB-C cable** to PC
4. **Switch appears as drive** on PC

#### **Direct Installation:**
1. **Copy NSP to Switch** via MTP
2. **Game installs directly** to system
3. **No intermediate storage** on SD card
4. **No cleanup needed**

**Result**: Only one copy exists (the installed game)

### **WiFi Network Installation:**
1. **DBI network server** mode
2. **Upload via web browser** from PC
3. **Direct installation** during upload
4. **No source files remain**

---

## Storage Monitoring and Management

### **Check Storage Usage:**

#### **In DBI:**
- **Browse storage** to see space used/available
- **View installed games** and their sizes
- **Check EmuMMC storage** specifically

#### **In System Settings:**
- **System Settings → Data Management**
- **View software storage** usage
- **See individual game sizes**

### **Warning Signs:**
- **Installation fails**: Usually insufficient storage
- **Slow performance**: SD card nearly full
- **Error messages**: Storage-related issues

### **Regular Maintenance:**
- **Weekly**: Delete unused source files
- **Monthly**: Review installed games, remove unused
- **Before large installs**: Clean up space proactively

---

## Troubleshooting Storage Issues

### **"Not enough space" errors:**

#### **Quick Solutions:**
1. **Delete source NSPs** from `/install/` folder
2. **Remove unused games** you no longer play
3. **Check for duplicate files** in various folders
4. **Move files to PC** temporarily

#### **Long-term Solutions:**
1. **Upgrade to larger SD card**
2. **Use network installation** to avoid duplicates
3. **Implement file management routine**
4. **Plan installations around storage capacity**

### **Slow installation speed:**
- **SD card nearly full**: Performance degrades
- **Free up space**: Keep 10-20% SD card free
- **Check SD card health**: May need replacement

---

## Advanced Storage Optimization

### **Compression and Formats:**

#### **NSP vs XCI:**
- **NSP files**: Generally preferred for installation
- **XCI files**: May need conversion, can be larger
- **Choose NSP**: When available for better efficiency

#### **Update and DLC Management:**
- **Base game**: Install first
- **Updates**: Often smaller, install separately
- **DLC**: Install after base game
- **Plan order**: Install base → test → update → DLC

### **Multi-Game Projects:**
- **Game collections**: Plan storage for entire collection
- **Series installations**: Install sequentially to test compatibility
- **Batch cleanup**: Remove sources after confirming all work

---

## Best Practices Summary

### **Efficient Installation Workflow:**
```
1. Plan storage needs (calculate 2× game size for peak)
2. Use USB-C transfer for large files
3. Install games one at a time
4. Test each installation works
5. Delete source files immediately after confirmation
6. Monitor storage regularly
7. Use network install when possible
```

### **Storage Management Rules:**
- **Always keep 10-20% SD card space free**
- **Delete source files after successful installation**
- **Plan installations around your SD card capacity**
- **Use PC storage for source file backups if needed**
- **Monitor EmuMMC space separately from general SD card space**

### **When to Clean Up:**
- **After each successful installation**
- **Before installing large games**
- **When approaching 80% SD card full**
- **Monthly maintenance routine**

---

## Summary

**Your observation is correct** - during installation, you temporarily have two copies of each game. This is normal and expected behavior.

**Key points:**
- **Source NSP**: Temporary file for installation
- **Installed game**: Permanent copy in EmuMMC system
- **Delete source files**: After confirming installation works
- **Plan for 2× storage**: During installation peak
- **Use network install**: To avoid temporary duplicates entirely

**Storage efficiency**: The key is deleting source files promptly after successful installation, or using network installation methods to avoid temporary duplicates entirely.