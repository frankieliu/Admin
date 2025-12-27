# emuMMC vs emuNAND: Terminology and Technical Differences Guide

> This guide explains the difference between emuMMC and emuNAND terminology, what the acronyms mean, and why both terms are used.

## Acronym Meanings

### **emuNAND**
- **emu** = Emulated
- **NAND** = **N**ot **A**nd **N**or **D**evice (type of flash memory)
- **Full meaning**: Emulated NAND flash storage

### **emuMMC**
- **emu** = Emulated
- **MMC** = **M**ulti**M**edia**C**ard (storage interface standard)
- **Full meaning**: Emulated MultiMediaCard storage

---

## Technical Background

### **What is NAND?**
- **Physical storage**: The actual flash memory chip inside your Nintendo Switch
- **Contains**: Operating system, save files, installed games, system settings
- **Size**: 32GB (regular Switch) or 64GB (OLED Switch)
- **Location**: Soldered to the Switch motherboard

### **What is MMC?**
- **Interface protocol**: How the system communicates with storage devices
- **eMMC**: Embedded MultiMediaCard (what Switch actually uses)
- **Modern standard**: More accurate technical term than "NAND"

---

## The Reality: **They're the Same Thing**

### **Important Truth:**
**emuNAND and emuMMC refer to exactly the same concept** - they're just different names used by different tools and communities.

### **What Both Terms Describe:**
- A **complete copy** of your Switch's internal storage
- **Stored on SD card** instead of internal memory
- **Bootable environment** that runs independently from internal system
- **Isolated sandbox** for homebrew/piracy activities

---

## Why Two Different Terms Exist

### **Historical Development:**

#### **emuNAND (Older Term)**
- **Origin**: Used in early Nintendo 3DS hacking community
- **Carried over**: Switch hackers adopted familiar terminology
- **Community preference**: Many guides and tools still use this term
- **Simpler**: Easier to understand for beginners

#### **emuMMC (Newer/Technical Term)**
- **Hekate adoption**: Hekate bootloader uses "emuMMC" terminology
- **Technical accuracy**: More precise description of the storage interface
- **Modern tools**: Newer homebrew applications prefer this term
- **Professional**: Sounds more technical/accurate

### **Tool-Specific Usage:**
- **Hekate bootloader**: Always says "emuMMC"
- **Atmosphere documentation**: Often uses "emuMMC"
- **Community guides**: Mix of both terms
- **KEFIR**: Uses both terms interchangeably

---

## Practical Usage in Real Tools

### **Hekate Menu Options:**
```
Launch CFW (emuMMC)    ← Uses "emuMMC" terminology
Launch (emuMMC)        ← Uses "emuMMC" terminology
```

### **File/Folder Names:**
- **SD Card folder**: `/emummc/` (using emuMMC naming)
- **Configuration files**: Often reference "emummc"
- **Log files**: May use either term

### **Community Documentation:**
- **Guides**: May use either "emuNAND" or "emuMMC"
- **Forums**: Both terms used interchangeably
- **YouTube tutorials**: Often say "emuNAND" (more familiar)

---

## Technical Implementation Details

### **Both Terms Refer To:**

#### **File-based Implementation:**
- **Location**: `/emummc/` folder on SD card
- **Files**: Split into multiple parts (e.g., `00`, `01`, `02`, etc.)
- **Size**: 29.8GB (regular) or 58.8GB (OLED) total

#### **Partition-based Implementation:**
- **Location**: Dedicated partition at beginning of SD card
- **Access**: Direct partition access (faster)
- **Size**: Same as file-based (29.8GB/58.8GB)

### **What's Actually Stored:**
- **BOOT0**: Boot partition 0
- **BOOT1**: Boot partition 1
- **USER partition**: Main system storage
- **Complete system image**: Exact copy of internal storage

---

## Regional and Community Differences

### **Geographic Usage Patterns:**
- **North America**: Mix of both terms
- **Europe**: Slight preference for "emuMMC"
- **Japan**: Various terms in Japanese
- **Online communities**: Both terms widely accepted

### **Platform-Specific Usage:**
- **Reddit**: Both terms used
- **GBATemp forums**: Slight preference for "emuNAND"
- **Discord servers**: Both accepted
- **YouTube**: "emuNAND" more common in titles

---

## What You Should Know

### **For Understanding Guides:**
- **Both mean the same thing**: Don't be confused by different terminology
- **Context matters**: Look at what the tool/guide is describing
- **Functionality identical**: Same features regardless of name

### **For Communication:**
- **Use either term**: Community understands both
- **Match the tool**: Use "emuMMC" when discussing Hekate, either for general discussion
- **Don't overthink**: Focus on functionality, not terminology

### **For Troubleshooting:**
- **Search with both terms**: When looking for solutions online
- **Specify your tools**: Mention which bootloader/CFW you're using
- **Functionality focus**: Describe what's not working rather than just the name

---

## Quick Reference Terminology Guide

### **When You See "emuNAND":**
✅ **Means**: Copy of Switch storage on SD card
✅ **Used for**: Piracy, homebrew, safe testing
✅ **Same as**: emuMMC

### **When You See "emuMMC":**
✅ **Means**: Copy of Switch storage on SD card
✅ **Used for**: Piracy, homebrew, safe testing
✅ **Same as**: emuNAND

### **When You See "SysNAND" or "sysMMC":**
✅ **Means**: Your original internal Switch storage
✅ **Used for**: Official firmware, online play
✅ **Physical location**: Inside your Switch console

---

## Common Confusion Points Clarified

### **"Are emuNAND and emuMMC different features?"**
- **Answer**: No, they're the same feature with different names

### **"Should I create emuNAND or emuMMC?"**
- **Answer**: They're the same thing - the tool chooses the name

### **"Can I have both emuNAND and emuMMC?"**
- **Answer**: No, because they're the same concept

### **"Which is better, emuNAND or emuMMC?"**
- **Answer**: Neither - they're identical in functionality

### **"Why does my guide say emuNAND but Hekate says emuMMC?"**
- **Answer**: Different naming conventions, same technology

---

## Modern Recommendation

### **What to Use:**
- **Follow your tools**: Use the terminology your specific tools use
- **Hekate users**: Say "emuMMC" when discussing Hekate features
- **General discussion**: Either term is fine
- **Beginners**: "emuNAND" might be easier to understand initially

### **What Matters More:**
- **Understanding the concept**: Isolated copy of your system
- **Proper setup**: Following guides correctly
- **Safety practices**: Keeping environments separate
- **Functionality**: Using it for its intended purpose

---

## Summary

### **The Bottom Line:**
**emuNAND = emuMMC = Same Thing**

- **Different names for identical technology**
- **Both mean**: SD card copy of Switch internal storage
- **Both provide**: Safe environment for homebrew/piracy
- **Both work**: Exactly the same way

### **Key Takeaway:**
Don't get confused by the terminology - focus on understanding what it does (provides a safe, isolated environment for hacking activities) rather than what it's called.

Whether a guide says "emuNAND," "emuMMC," or even "emulated NAND," they're all talking about the same feature that gives you a separate, hackable environment on your SD card while keeping your internal system safe.