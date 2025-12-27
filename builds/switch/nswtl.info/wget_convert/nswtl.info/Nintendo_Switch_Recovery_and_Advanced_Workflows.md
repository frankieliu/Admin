# Nintendo Switch Recovery and Advanced Workflows - Complete Guide

## Recovery and Troubleshooting Workflows

### Emergency Recovery Decision Tree

This document covers the recovery workflows and troubleshooting procedures for Nintendo Switch hacking that were not included in the main decision tree.

---

## 1. Troubleshooting and Recovery Workflows

### Boot Failure Recovery Process

#### Scenario A: Console Hangs on Switch Logo
**Diagnostic Steps:**
1. **Test Stock Boot** - Verify if console can boot without CFW
2. **Module Conflict Check** - Use TegraExplorer to isolate problematic modules
3. **Clean Installation** - Remove CFW and reinstall fresh KEFIR
4. **Storage Issues** - Format SD card as FAT32 and retry
5. **Partition Check** - Verify USER partition integrity

**Resolution Hierarchy:**
```
Boot Failure → Test Stock → Module Check → Clean Install → Format SD → Hardware Check
```

#### Scenario B: Black Screen After CFW Launch
**Diagnostic Steps:**
1. **Wait Period** - First boot can take 1-2 minutes
2. **Payload Menu** - Hold VOL- during boot to access alternatives
3. **Firmware Check** - Verify console is on supported firmware (≤21.0.0)
4. **KEFIR Reinstall** - Complete fresh installation

#### Scenario C: Cannot Enter RCM Mode
**Diagnostic Steps:**
1. **Jig Contact** - Verify shorting tool makes proper contact
2. **Rail Cleaning** - Clean Joy-Con rail with isopropyl alcohol
3. **Alternative Jigs** - Try different shorting methods
4. **Console Check** - Verify console is not patched (serial number check)

### Game and Installation Issues

#### Installation Failure Resolution
**Common Causes and Solutions:**
1. **Installer Version** - Update to latest DBI
2. **Storage Space** - Verify adequate free space
3. **File System** - Ensure SD card is FAT32 formatted
4. **File Integrity** - Check for corrupted game files
5. **Alternative Tools** - Try Tinfoil or Awoo Installer

#### Game Launch Problems
**Troubleshooting Steps:**
1. **Game Updates** - Install latest game version
2. **Firmware Compatibility** - Update firmware to match requirements
3. **DLC Dependencies** - Install required DLC components
4. **Reinstallation** - Complete game reinstall
5. **Save Corruption** - Check save files with JKSV

### Hardware and SD Card Issues

#### SD Card Problems
**Detection Issues:**
1. **Format Verification** - Must be FAT32, not exFAT
2. **Card Testing** - Use different SD card to isolate issue
3. **Contact Cleaning** - Clean SD card contacts
4. **PC Testing** - Test card functionality in computer
5. **Authenticity Check** - Use H2testw to detect fake cards

#### Console-Specific SD Issues
**Switch Recognition Problems:**
1. **Switch Formatting** - Format card using Switch's built-in formatter
2. **Nintendo Method** - Use official Nintendo format process
3. **Size Testing** - Try smaller card (32GB) for troubleshooting
4. **Speed Rating** - Verify card is U3 rated or higher

---

## 2. System Migration and Recovery Workflows

### SX OS to Atmosphere Migration

#### Pre-Migration Assessment
**Data Inventory:**
1. **EmuNAND Status** - Check if EmuNAND or SysNAND setup
2. **Game Catalog** - Document installed games and saves
3. **License Status** - Note SX OS license availability
4. **Save Backup** - Complete backup using JKSV/Checkpoint

#### Migration Process Flow
```
Backup Saves → Remove SX OS → Install KEFIR → Boot Test → Game Check → Restore Saves
```

**Detailed Steps:**
1. **Save Backup** - Use JKSV on existing SX OS setup
2. **SX OS Removal** - Delete `/sxos/` and `/reinx/` folders
3. **KEFIR Installation** - Deploy fresh Atmosphere-based setup
4. **Boot Verification** - Test Hekate and CFW launch
5. **Game Verification** - Check game accessibility
6. **Save Restoration** - Restore backed up saves via JKSV

### EmuNAND Transition for Already Hacked Consoles

#### Safety Transition Process
**Why Transition:**
- Separate piracy from legitimate use
- Restore online capability on SysNAND
- Create testing environment
- Reduce ban risk

**Transition Workflow:**
```
Current Setup Assessment → Save Backup → EmuNAND Creation → Configuration → DNS Setup → Usage Training
```

**Implementation Steps:**
1. **Current State Backup** - Document and backup everything
2. **EmuNAND Creation** - Use Hekate to create from current SysNAND
3. **Boot Configuration** - Configure Hekate for dual boot
4. **DNS Configuration** - Set up 90DNS for EmuNAND, clear for SysNAND
5. **Usage Segregation** - Train user on environment separation

---

## 3. System Maintenance Workflows

### Firmware Update Management

#### Update Decision Matrix
| Console Type | Current FW | Update Method | Restrictions |
|--------------|------------|---------------|--------------|
| Caffeine | 4.0.0-4.1.0 | **NEVER UPDATE** | EmuNAND only |
| Fusée Gelée | Any | ChoiDujourNX/Cartridge | Preserve fuses |
| Modchip | Any | Official/CFW tools | None |

#### Safe Update Procedures
**Method 1: Game Cartridge (Safest)**
```
Insert Cartridge → Internet Connection → Follow Prompts → Auto-Update
```

**Method 2: ChoiDujourNX (Preserves Downgrade)**
```
Download Tool → Get Firmware → "No Burn Fuses" → Manual Install
```

**Method 3: CFW Update Tools**
```
DBI Tool → Firmware Section → Select Version → Download/Install
```

### Firmware Downgrade Procedures

#### Downgrade Compatibility Assessment
**Console Types:**
- ✅ **Unpatched Erista**: Can downgrade with proper fuse management
- ❌ **Patched Erista**: Cannot downgrade (burned fuses prevent)
- ❌ **Mariko Platform**: No downgrade capability

#### Downgrade Methods
**Method 1: NAND Backup Restore (Safest)**
```
Backup Verification → Hekate Boot → Restore Option → Select Backup → Execute
```

**Method 2: ChoiDujourNX Manual Downgrade**
```
Tool Download → Firmware Files → Fuse Preservation → Manual Install
```

---

## 4. Advanced Configuration Workflows

### AutoRCM Management

#### AutoRCM Decision Tree
**Benefits vs Risks Analysis:**

**Enable AutoRCM If:**
- Want convenience (no jig needed)
- Have reliable payload injection setup
- Using Fusée Gelée method
- Don't mind tethered boot

**Avoid AutoRCM If:**
- Using Caffeine exploit (**CRITICAL - Will brick!**)
- Want ability to boot stock occasionally
- Concerned about battery drain detection
- Using portable/travel setup frequently

#### AutoRCM Procedures
**Enable:**
```
Hekate Boot → Tools Menu → Archive bit-AutoRCM → Set ON
```

**Disable:**
```
Hekate Boot → Tools Menu → Archive bit-AutoRCM → Set OFF
```

### Server Blocking Configuration

#### Incognito Setup (Caffeine Specific)
**Purpose:** Block Nintendo authentication without DNS changes

**Procedure:**
```
NAND Backup → Hekate Boot → Payloads → Incognito_RCM.bin → Select Partition → Apply
```

**Safety Notes:**
- **MANDATORY** NAND backup before use
- Creates `prodinfo_sysnand.bin` backup
- Irreversible without NAND restore

---

## 5. System Reset and Recovery Workflows

### Factory Reset Procedures

#### Reset Decision Matrix
**Reset Scenarios:**
1. **Console Sale** - Complete data removal
2. **Performance Issues** - System cleanup
3. **Starting Fresh** - Clean installation
4. **CFW Removal** - Return to stock

#### Reset Methods
**Method 1: Standard Factory Reset**
```
System Settings → System → Formatting Options → Choose Reset Type → Confirm
```

**Method 2: NAND Restore (Complete)**
```
Hekate Boot → Tools → Restore Options → Full NAND → Select Backup → Execute
```

**Method 3: EmuNAND-Only Reset**
```
Hekate Boot → EmuNAND Tools → Reset Option → Confirm
```

### Data Recovery Procedures

#### Save Recovery Options
**If Factory Reset Performed:**
- ❌ **Local saves** - Permanently lost without backup
- ✅ **Cloud saves** - May be recoverable with Nintendo Switch Online
- ✅ **Manual backups** - Restore from JKSV/Checkpoint backups
- ✅ **Previous backups** - Check computer/cloud storage

#### System Recovery Hierarchy
```
Soft Reboot → CFW Reinstall → NAND Restore → Professional Repair
```

---

## 6. Daily Usage and Maintenance Workflows

### Routine Operations

#### Daily Startup Procedure
**RCM-Based Systems:**
```
Power On → Enter RCM → Inject Payload → Select Boot Option → Launch
```

**Modchip Systems:**
```
Power On → Auto-Launch → Select Environment → Continue
```

#### Environment Selection Logic
**Choose SysNAND When:**
- Playing purchased games online
- Using eShop or Nintendo services
- Updating official firmware
- Maintaining clean environment

**Choose EmuNAND When:**
- Installing/playing pirated games
- Testing homebrew applications
- Using mods or cheats
- System experimentation

### Application Management

#### Game Installation Workflow
```
Acquire Game → Launch DBI → Select Source → Choose Installation Location → Install → Verify
```

#### Save Management Routine
```
Regular Interval → Launch JKSV → Select Games → Export Saves → Copy to Safe Location
```

#### System Maintenance Schedule
**Weekly:**
- Check for CFW updates
- Backup critical saves
- Clear cache if needed

**Monthly:**
- Update homebrew applications
- Check SD card health
- Verify backup integrity

**Major Updates:**
- Full system backup
- Test update compatibility
- Document changes

---

## 7. Emergency Procedures and Disaster Recovery

### Console Recovery Hierarchy

#### Level 1: Soft Recovery
**Symptoms:** Minor boot issues, occasional crashes
**Solutions:** Reboot, payload re-injection, CFW reinstall

#### Level 2: System Recovery
**Symptoms:** Cannot boot CFW, homebrew crashes
**Solutions:** Clean CFW install, SD card reformat, backup restore

#### Level 3: Hardware Recovery
**Symptoms:** Cannot enter RCM, no response
**Solutions:** NAND backup restore, hardware inspection, professional repair

#### Level 4: Catastrophic Failure
**Symptoms:** True brick, no recovery response
**Solutions:** Professional motherboard repair, console replacement

### Emergency Contact Points
**When to Seek Help:**
1. **NAND restore fails** - Professional recovery needed
2. **Hardware damage suspected** - Repair shop consultation
3. **Unfamiliar error codes** - Community support forums
4. **Modchip issues** - Original installer contact

---

## 8. Preventive Measures and Best Practices

### Risk Mitigation Strategies

#### Backup Strategy
**Critical Backups:**
1. **NAND Backup** - Before any major changes
2. **Save Backups** - Weekly or before gaming sessions
3. **SD Card Backup** - Before CFW updates
4. **Configuration Documentation** - Setup notes and procedures

#### Update Safety Protocol
```
Check Compatibility → Backup Everything → Test in EmuNAND → Apply to Target → Verify Function
```

### Long-term Maintenance

#### Hardware Care
- Regular cleaning of contacts and rails
- Battery health monitoring
- Temperature management during intensive use
- Protection from physical damage

#### Software Maintenance
- Keep CFW updated to latest stable versions
- Monitor homebrew application updates
- Track firmware compatibility changes
- Maintain organized file structure

---

This comprehensive guide covers all the additional workflows and recovery procedures that complement the main Nintendo Switch hacking decision tree, ensuring users have complete coverage for both setup and maintenance scenarios.