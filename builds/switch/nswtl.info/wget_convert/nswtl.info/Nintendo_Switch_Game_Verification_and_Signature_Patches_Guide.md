# Nintendo Switch Game Verification and Signature Patches Guide

> This guide explains how game verification works, what signature patches do, and how to handle games that don't pass verification checks.

## Understanding Game Verification on Nintendo Switch

### **What is Game Verification?**

Nintendo Switch has built-in security systems to verify that games are legitimate:

1. **Signature Verification**: Checks if game files are properly signed by Nintendo
2. **ACID Signature Check**: Verifies homebrew application permissions
3. **Certificate Validation**: Ensures game comes from authorized source
4. **Region/Version Checks**: Confirms game compatibility with console

### **What Happens During Verification:**
```
Game Launch → Signature Check → Certificate Check → Region Check → Launch/Block
```

---

## How Atmosphere CFW Handles Verification

### **Signature Patches in Atmosphere/KEFIR:**

When you boot **"Launch CFW (emuMMC)"** or **"Launch CFW (sysMMC)"**, Atmosphere automatically applies:

1. **Signature Patches**: Allow unsigned/pirated games to run
2. **ACID Removal**: Bypass homebrew permission checks
3. **Certificate Bypass**: Skip Nintendo's certificate validation
4. **Region Unlock**: Allow games from any region

### **What This Means:**
- ✅ **Pirated NSP files work** (unsigned games)
- ✅ **Homebrew applications work** (no ACID checks)
- ✅ **Region-locked games work** (bypass region restrictions)
- ✅ **Modified games work** (ROM hacks, translations)

---

## File Format Compatibility

### **Supported Game Formats:**

#### **NSP Files (Recommended)**
- **What it is**: Nintendo Submission Package (official format)
- **Compatibility**: ✅ Best compatibility with Atmosphere
- **Installation**: Works directly with DBI/Tinfoil
- **Verification**: Bypassed by signature patches

#### **XCI Files**
- **What it is**: Nintendo eXtended Card Image (cartridge dump)
- **Compatibility**: ⚠️ May need conversion to NSP
- **Installation**: Some installers support directly, others need conversion
- **Verification**: Also bypassed by signature patches

#### **NSZ Files**
- **What it is**: Compressed NSP files
- **Compatibility**: ✅ Supported by modern installers
- **Installation**: DBI and Tinfoil handle decompression
- **Verification**: Same as NSP after decompression

---

## Common Verification Issues and Solutions

### **Issue 1: "Game Won't Install" or "Installation Failed"**

#### **Possible Causes:**
- Corrupted game file
- Wrong file format
- Insufficient storage space
- Signature verification enabled (not in CFW)

#### **Solutions:**
1. **Verify you're in CFW**: Check System Settings for "AMS" version
2. **Check file integrity**: Re-download if file seems corrupted
3. **Use NSP format**: Convert XCI to NSP if needed
4. **Free up storage**: Ensure adequate space
5. **Try different installer**: DBI vs Tinfoil vs Awoo

### **Issue 2: "Game Installed But Won't Launch"**

#### **Possible Causes:**
- Missing updates/DLC
- Firmware version mismatch
- Corrupted installation
- Region mismatch (rare with CFW)

#### **Solutions:**
1. **Install required updates**: Game may need latest update
2. **Check firmware compatibility**: Update EmuNAND if needed
3. **Reinstall game**: Delete and reinstall completely
4. **Install base game first**: Then updates, then DLC
5. **Check game version**: Ensure compatible with your setup

### **Issue 3: "Error Code During Launch"**

#### **Common Error Codes and Solutions:**

**Error 2002-4513** (Game Card Error):
- Game thinks it's a cartridge but isn't
- Solution: Reinstall as digital version

**Error 2016-0247** (Software Error):
- General software corruption
- Solution: Reinstall game and updates

**Error 2168-0002** (Save Data Error):
- Save file corruption or incompatibility
- Solution: Delete save data or restore from backup

---

## Advanced Verification Bypass Techniques

### **For Stubborn Games:**

#### **Method 1: Force Install with Different Tools**
1. **Try DBI**: Most reliable installer
2. **Try Tinfoil**: Different installation method
3. **Try Awoo Installer**: Alternative approach
4. **Try Goldleaf**: Older but sometimes works

#### **Method 2: File Format Conversion**
```
XCI → NSP Conversion:
1. Use 4NXCI tool on PC
2. Convert XCI to NSP format
3. Install NSP with DBI
```

#### **Method 3: Manual Certificate Management**
1. **Dump console certificates** (advanced)
2. **Install specific certificates** for problematic games
3. **Use ticket management** in DBI/Tinfoil

### **Method 4: Firmware Matching**
1. **Check game requirements**: What firmware version needed
2. **Update EmuNAND**: To match game requirements
3. **Install firmware-specific updates**: Match game's expectations

---

## Specific Game Types and Verification

### **Pirated Games (NSP)**
- ✅ **Work automatically** with Atmosphere signature patches
- **No additional steps** needed beyond normal installation
- **Success rate**: 95%+ with proper CFW setup

### **ROM Hacks/Translations**
- ✅ **Usually work** as they're modified NSPs
- **May need specific installers** for heavily modified games
- **Test compatibility** before deleting originals

### **Beta/Leaked Games**
- ⚠️ **Variable compatibility** depending on how they were obtained
- **May lack proper certificates** even with signature patches
- **Often require specific firmware versions**

### **Homebrew Games**
- ✅ **Work with ACID removal** in Atmosphere
- **Install as NSP** or run as NRO files
- **No verification issues** when properly packaged

---

## Troubleshooting Tools and Methods

### **DBI Advanced Features:**

#### **Browse Tickets** (in DBI):
- View installed game certificates
- Remove problematic tickets
- Reinstall tickets for games

#### **Browse Applications** (in DBI):
- See all installed games
- Check installation status
- Remove partial installations

### **Verification Debugging:**
1. **Check Atmosphere logs**: `/atmosphere/crash_reports/`
2. **Monitor installation**: Watch for error messages during install
3. **Test in SysNAND**: See if issue is EmuNAND-specific
4. **Compare file hashes**: Verify download integrity

---

## Best Practices for Game Compatibility

### **Installation Workflow:**
```
1. Download from trusted sources
2. Verify file integrity (check file size)
3. Use NSP format when available
4. Install to EmuNAND for safety
5. Test game launch before deleting source
6. Install updates and DLC separately
```

### **Storage Organization:**
```
/install/
├── /games/          (Base games)
├── /updates/        (Game updates)
├── /dlc/           (DLC content)
└── /homebrew/      (Homebrew NSPs)
```

### **Compatibility Maximization:**
- **Keep EmuNAND updated**: Latest firmware for best compatibility
- **Use latest installers**: DBI, Tinfoil updated versions
- **Maintain signature patches**: Ensure KEFIR is current
- **Test systematically**: Install base → update → DLC → test

---

## When Games Still Won't Work

### **Last Resort Solutions:**

#### **1. Different Sources**
- Try different game dump sources
- Look for "scene" vs "p2p" releases
- Check for "proper" or "repack" versions

#### **2. Specific CFW Versions**
- Some games work better with older/newer Atmosphere versions
- Try different KEFIR releases
- Check game-specific compatibility reports

#### **3. Alternative Formats**
- If NSP fails, try XCI
- Try compressed (NSZ) versions
- Look for different region versions

#### **4. Compatibility Databases**
- Check online compatibility lists
- Community forums for specific games
- GBATemp game compatibility threads

---

## Understanding Error Messages

### **Installation Errors:**
- **"Invalid NCA"**: Corrupted or wrong format
- **"Missing rights"**: Certificate/ticket issues
- **"Insufficient space"**: Storage full
- **"Invalid signature"**: Signature patch not working

### **Launch Errors:**
- **"Software closed"**: General crash (try reinstall)
- **"Game Card error"**: Format/installation issue
- **"Save data error"**: Save compatibility issue
- **"System error"**: Firmware compatibility issue

---

## Prevention and Maintenance

### **Regular Maintenance:**
- **Update KEFIR monthly**: Keep signature patches current
- **Verify installations**: Test games after installing
- **Clean failed installs**: Remove partial installations
- **Monitor compatibility**: Check community reports for new games

### **Backup Strategy:**
- **Keep working game files**: Don't delete sources until tested
- **Save file backups**: Regular save backups with JKSV
- **Document working setups**: Note firmware versions that work
- **Test before major updates**: Verify compatibility before updating

---

## Summary

### **Key Points:**
- **Atmosphere CFW automatically bypasses most verification** through signature patches
- **99% of pirated games work** without additional steps
- **File format matters**: NSP is most compatible
- **Installation tool matters**: DBI is most reliable

### **When Games Don't Work:**
1. **Check you're in CFW** (not stock firmware)
2. **Verify file integrity** (redownload if needed)
3. **Try different installer** (DBI → Tinfoil → Awoo)
4. **Convert file format** (XCI → NSP)
5. **Update firmware** (game compatibility)
6. **Check community forums** (game-specific issues)

### **Success Rate:**
- **Pirated NSP games**: 95%+ success with proper CFW
- **ROM hacks**: 90%+ success
- **Homebrew**: 99% success with current KEFIR
- **Beta/leaked games**: Variable (60-90% depending on source)

**Bottom line**: Atmosphere's signature patches handle verification automatically for the vast majority of games. When they don't work, it's usually a file integrity, format, or firmware compatibility issue rather than a fundamental verification problem.