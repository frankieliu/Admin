# Nintendo Switch Game Backup and Dumping Guide

> This guide explains how to backup installed games from your Nintendo Switch, including homebrew installations and official cartridge/digital games.

## Understanding Game Backup vs Save Backup

### **Different Types of Backups:**

#### **Save Game Backups (Covered Previously):**
- **What**: Your game progress, settings, save files
- **Size**: 1-100MB per game
- **Tool**: JKSV, Checkpoint
- **Purpose**: Preserve game progress

#### **Game Installation Backups (This Guide):**
- **What**: The actual game files (NSP/XCI format)
- **Size**: 1-32GB per game
- **Tool**: nxdumptool, DBI, Goldleaf
- **Purpose**: Backup entire game for reinstallation

### **Why Backup Installed Games?**
- **Storage rotation**: Remove games to save space, reinstall later
- **System migration**: Move games to new Switch console
- **Corruption protection**: Backup against installation corruption
- **Archive creation**: Personal game library backup
- **Format conversion**: Convert between NSP/XCI formats

---

## Game Dumping Tools Overview

### **nxdumptool (Recommended)**
- **Best overall tool** for game dumping
- **Supports all formats**: NSP, XCI, individual files
- **Cartridge and digital** game support
- **Active development**: Regularly updated
- **Comprehensive options**: Full control over dump process

### **DBI (Built-in Feature)**
- **Included with KEFIR**: Already have it installed
- **"Browse installed applications"** feature
- **Export/dump functionality**: Can extract installed games
- **Familiar interface**: Same tool used for installation

### **Goldleaf (Legacy)**
- **Older tool**: Still functional but less maintained
- **Basic dumping**: Can extract NSP files
- **Simple interface**: Easy to use for basic tasks

---

## Using nxdumptool for Game Backup

### **Installing nxdumptool:**

#### **Download and Setup:**
1. **Download latest nxdumptool**: From [GitHub releases](https://github.com/DarkMatterCore/nxdumptool/releases)
2. **Extract to SD card**: Place `nxdumptool.nro` in `/switch/nxdumptool/`
3. **Launch via homebrew**: L + Album → nxdumptool

### **Dumping Installed Games (Digital/Homebrew):**

#### **Step 1: Launch nxdumptool**
1. **Boot into CFW** (EmuMMC recommended)
2. **Open Homebrew Launcher**: L + Album
3. **Select nxdumptool** from application list
4. **Main menu appears**

#### **Step 2: Select Dump Type**
1. **Choose "Dump installed SD card / eMMC content"**
2. **Game list appears**: Shows all installed games
3. **Select game to backup**: Navigate with D-pad
4. **Press A** to select game

#### **Step 3: Configure Dump Options**
1. **Select "Nintendo Submission Package (NSP)"**: Recommended format
2. **Choose output location**: Usually `/nxdumptool/`
3. **Configure options**:
   - ✅ **Generate ticket**: Include game license
   - ✅ **Remove console specific data**: For portability
   - ✅ **Keep delta fragments**: Preserve update data
4. **Confirm settings**

#### **Step 4: Start Dump Process**
1. **Press A to start dump**
2. **Monitor progress**: Shows percentage and speed
3. **Wait for completion**: Can take 10-60 minutes depending on game size
4. **Verification**: Tool verifies dump integrity

### **Dumping Cartridge Games:**

#### **Physical Cartridge Backup:**
1. **Insert cartridge** into Switch
2. **Launch nxdumptool**
3. **Select "Dump gamecard content"**
4. **Choose format**:
   - **XCI**: Exact cartridge image
   - **NSP**: Nintendo package format
5. **Configure options** and start dump

---

## Using DBI for Game Backup

### **DBI Game Export Method:**

#### **Step 1: Access Installed Applications**
1. **Launch DBI** (L + Album → DBI)
2. **Select "Browse installed applications"**
3. **Game list appears**: All installed games shown
4. **Select target game**: Choose game to backup

#### **Step 2: Export Game**
1. **Press Y button**: Opens context menu
2. **Select "Export"** or "Dump" option
3. **Choose export format**: Usually NSP
4. **Select output location**: Where to save backup
5. **Confirm export**: Start the dump process

#### **DBI Advantages:**
- ✅ **Already installed**: Comes with KEFIR
- ✅ **Familiar interface**: Same tool for installation/management
- ✅ **Integrated workflow**: Install, manage, backup in one tool

---

## Game Backup Workflow and Organization

### **Recommended Backup Structure:**

#### **SD Card Organization:**
```
/backups/
├── /games/
│   ├── /cartridge_dumps/     (XCI files from cartridges)
│   ├── /digital_dumps/       (NSP from digital/homebrew)
│   └── /converted/           (Format conversions)
├── /saves/                   (JKSV save backups)
└── /system/                  (NAND backups)
```

### **Backup Workflow Process:**

#### **Regular Backup Schedule:**
```
1. Monthly: Backup newly installed games
2. Before updates: Backup current versions
3. Before system changes: Full backup session
4. Storage rotation: Backup before uninstalling
```

#### **Step-by-Step Workflow:**
1. **Identify games to backup**: Check installed game list
2. **Free up space**: Ensure adequate storage for dumps
3. **Launch dumping tool**: nxdumptool or DBI
4. **Process games**: Dump one by one or batch process
5. **Verify dumps**: Test dump integrity
6. **Organize files**: Move to appropriate folders
7. **Document backup**: Keep list of what's backed up

---

## Advanced Backup Techniques

### **Batch Game Dumping:**

#### **Multiple Game Backup:**
1. **Create backup list**: Document all games to backup
2. **Estimate storage needs**: Calculate total space required
3. **Process systematically**: Work through list methodically
4. **Monitor progress**: Track completed backups
5. **Verify batch**: Test random samples for integrity

### **Format Conversion During Backup:**

#### **XCI to NSP Conversion:**
- **Use 4NXCI tool**: Convert cartridge dumps to NSP
- **Better compatibility**: NSP format preferred for installation
- **Size optimization**: NSP can be smaller than XCI

#### **Compression Options:**
- **NSZ format**: Compressed NSP files
- **Space saving**: 20-50% smaller than original NSP
- **Compatibility**: Modern tools support NSZ format
- **Trade-off**: Slightly slower installation

---

## Storage Management for Game Backups

### **Storage Requirements:**

#### **Calculate Storage Needs:**
- **Small indie games**: 100MB - 2GB per game
- **Medium games**: 2GB - 8GB per game
- **Large AAA games**: 8GB - 32GB per game
- **Complete collections**: 100GB - 1TB+ for full libraries

#### **Storage Solutions:**
```
SD Card Size    |  Game Storage  |  Backup Capacity
64GB           |  ~25GB         |  2-5 large games
128GB          |  ~85GB         |  8-15 large games
256GB          |  ~210GB        |  20-40 large games
512GB          |  ~460GB        |  40-80 large games
```

### **External Storage Strategy:**

#### **PC Backup Storage:**
1. **Primary storage**: Keep backups on PC hard drive
2. **SD card rotation**: Only keep currently playing games on Switch
3. **Network transfer**: Use MTP to manage game library
4. **Automation**: Scripts to sync between PC and Switch

#### **Cloud Storage:**
- **Large files warning**: Game backups are 1-32GB each
- **Upload time**: Consider internet speed limitations
- **Storage costs**: Cloud storage can be expensive for large collections
- **Legal considerations**: Check terms of service

---

## Restoring Games from Backups

### **Reinstalling Backed Up Games:**

#### **Using DBI to Reinstall:**
1. **Copy NSP to Switch**: Via MTP or direct SD card access
2. **Launch DBI**: Access homebrew launcher
3. **Browse and install files**: Navigate to backed up NSP
4. **Select game backup**: Choose NSP file to install
5. **Install normally**: Same process as original installation

#### **Batch Reinstallation:**
1. **Copy multiple NSPs**: Transfer several game backups
2. **Mass installation**: Install multiple games in one session
3. **Progress tracking**: Monitor installation success
4. **Cleanup**: Remove source files after successful installation

### **Cross-Console Game Transfer:**

#### **Moving Games to New Switch:**
1. **Backup games** on original Switch
2. **Transfer backup files** to new Switch SD card
3. **Setup CFW** on new Switch (if needed)
4. **Reinstall games** from backups
5. **Restore save files** using JKSV backups

---

## Legal and Safety Considerations

### **Backup Legality:**
- ✅ **Personal backups**: Generally legal for your own games
- ✅ **Cartridge dumps**: Backing up your own cartridges is typically legal
- ⚠️ **Sharing backups**: Distributing game backups is illegal
- ⚠️ **Downloaded content**: Backing up pirated games doesn't make them legal

### **Safety Practices:**
- ✅ **Use EmuMMC**: Keep activities isolated from main system
- ✅ **Airplane mode**: Disable network during backup operations
- ✅ **Verify dumps**: Test backup integrity before relying on them
- ✅ **Keep originals**: Don't delete original games immediately

---

## Troubleshooting Game Backup Issues

### **Common Dumping Problems:**

#### **Dump Process Fails:**
**Possible Causes:**
- Insufficient storage space on SD card
- Corrupted game installation
- Tool compatibility issues
- System instability

**Solutions:**
1. **Free up space**: Ensure adequate storage for dump
2. **Restart tool**: Close and relaunch dumping application
3. **Update tools**: Use latest version of nxdumptool/DBI
4. **Try different format**: XCI vs NSP may have different success rates
5. **Reinstall game**: If original installation is corrupted

#### **Backup Won't Install:**
**Possible Causes:**
- Corrupted backup file
- Wrong installation tool
- Missing certificates/tickets
- Format incompatibility

**Solutions:**
1. **Verify file integrity**: Check file size and hash
2. **Try different installer**: DBI vs Tinfoil vs Awoo
3. **Include tickets**: Ensure backup includes game tickets
4. **Convert format**: XCI to NSP or vice versa
5. **Re-dump game**: Create new backup if original is corrupted

#### **Partial/Incomplete Dumps:**
**Possible Causes:**
- Storage space ran out during dump
- Tool crashed or was interrupted
- SD card write errors
- System went to sleep during process

**Solutions:**
1. **Monitor storage**: Keep track of available space
2. **Stay active**: Prevent system sleep during dumps
3. **Check SD card**: Test for write errors or corruption
4. **Restart dump**: Begin process again with more storage
5. **Use different tool**: Try alternative dumping application

---

## Advanced Game Management

### **Game Library Database:**

#### **Tracking Your Backups:**
```
Game Library Spreadsheet:
- Game Name
- Format (NSP/XCI/NSZ)
- Size
- Backup Date
- Location
- Installation Status
- Notes
```

#### **Automation Scripts:**
- **File organization**: Auto-sort backups by genre/size
- **Duplicate detection**: Find and remove duplicate backups
- **Integrity checking**: Verify backup file integrity
- **Sync management**: Keep PC and Switch libraries synchronized

### **Collection Management:**

#### **Game Rotation Strategy:**
1. **Active games**: Keep on Switch (currently playing)
2. **Backup storage**: Store completed/unused games on PC
3. **Seasonal rotation**: Swap games based on interest
4. **Space optimization**: Remove games, keep saves and backups

#### **Version Management:**
- **Track updates**: Keep base game and update versions
- **DLC organization**: Separate DLC from base games
- **Region variants**: Manage different regional versions
- **Language packs**: Handle games with multiple languages

---

## Integration with Overall Switch Workflow

### **Complete Backup Strategy:**

#### **What to Backup Regularly:**
```
Daily:
- Save files (JKSV)

Weekly:
- Recently installed games
- Modified homebrew

Monthly:
- Complete game library
- System NAND backup
- CFW configuration files
```

#### **Backup Verification:**
1. **File integrity**: Verify backup file hashes
2. **Installation test**: Test random backups by reinstalling
3. **Save compatibility**: Ensure saves work with restored games
4. **Documentation update**: Maintain accurate backup records

### **Recovery Scenarios:**

#### **When You Need Game Backups:**
- **SD card failure**: Restore entire game library
- **System migration**: Move to new Switch console
- **CFW reinstall**: Restore games after system reset
- **Storage upgrade**: Move library to larger SD card
- **Corruption recovery**: Replace corrupted installations

---

## Summary

### **Key Game Backup Methods:**

#### **Primary Tools:**
- **nxdumptool**: Best overall game dumping tool
- **DBI**: Convenient for already-installed games
- **JKSV**: For save backups (complementary)

#### **Backup Workflow:**
```
1. Install nxdumptool or use DBI
2. Select games to backup
3. Choose NSP format (recommended)
4. Configure dump options
5. Start backup process
6. Verify dump integrity
7. Organize backup files
8. Document what's backed up
```

#### **Best Practices:**
- ✅ **Regular backup schedule**: Monthly or before major changes
- ✅ **Verify backups**: Test that dumps can be reinstalled
- ✅ **Organize systematically**: Maintain clear folder structure
- ✅ **Keep documentation**: Track what's backed up and where
- ✅ **Use external storage**: PC storage for large game libraries
- ⚠️ **Legal compliance**: Only backup games you own
- ⚠️ **Stay in EmuMMC**: Keep backup activities isolated

### **Storage Planning:**
- **Active games**: 20-50GB on Switch SD card
- **Backup storage**: 100GB-1TB on PC for complete library
- **Rotation strategy**: Move games between active and backup storage
- **Growth planning**: Account for new game additions

**Game backups provide insurance against data loss and enable flexible game library management, allowing you to maintain a large collection while working within SD card storage limitations.**