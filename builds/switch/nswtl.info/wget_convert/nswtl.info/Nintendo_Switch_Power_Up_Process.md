# Nintendo Switch Power-Up Process After Shutdown

> This guide provides the exact step-by-step process for powering up a Nintendo Switch with Fusée Gelée after it has been completely powered down.

## Complete Power-Up Process After Shutdown

### Starting State
- Switch is completely powered off (black screen, no lights)
- You have your jig and payload injector ready
- SD card with KEFIR is inserted in Switch

### Step 1: Prepare Hardware
1. **Get your jig ready**
   - If using paperclip jig: Have it shaped and ready
   - If using commercial jig: Have it accessible
   - If using RCM Loader: Have it charged and payload loaded

2. **Prepare your payload injector**
   - **PC Users**: Have TegraRcmGUI open with `payload.bin` loaded
   - **Android Users**: Have your RCM app ready
   - **Dongle Users**: Ensure dongle is ready with correct payload

### Step 2: Enter RCM Mode
1. **Insert the jig**
   - Place jig into the **right Joy-Con rail**
   - Ensure it's making contact with pins 1 and 10
   - Push it in firmly but gently

2. **Connect USB cable** (if using PC/Android)
   - Connect USB-C end to Switch
   - Connect other end to PC/phone

3. **Power button sequence**
   - Hold **VOLUME UP (+)** button and keep holding
   - While holding VOL+, press and release **POWER** button
   - Continue holding **VOLUME UP** for 3-5 seconds
   - Release VOL+

4. **Verify RCM mode**
   - Screen should remain **completely black** (this is correct!)
   - Your payload injector should show "Nintendo Switch detected" or similar
   - **If screen lights up normally**: You're not in RCM, try again

### Step 3: Inject Payload
1. **PC/TegraRcmGUI Users**:
   - Verify Switch shows as connected in TegraRcmGUI
   - Confirm `payload.bin` is selected
   - Click **"Inject Payload"** button
   - Wait for injection to complete

2. **Android Users**:
   - Open your RCM app
   - Select the payload file
   - Tap inject/send button

3. **RCM Loader Users**:
   - Press the payload injection button on dongle
   - Wait for confirmation LED/beep

### Step 4: Boot Selection
1. **Hekate menu appears**
   - You should see the Hekate bootloader menu
   - Use VOLUME buttons to navigate
   - Use POWER button to select

2. **Choose boot option**:
   - **"Launch CFW (sysMMC)"**: Boot CFW on internal system
   - **"Launch CFW (emuMMC)"**: Boot CFW on EmuNAND (if setup)
   - **"Launch Stock (sysMMC)"**: Boot official firmware

3. **Wait for boot**
   - First boot after power-off can take 1-3 minutes
   - Be patient - black screen is normal initially
   - Console should eventually show Nintendo logo then home screen

### Step 5: Remove Jig
- **After successful boot**: Remove the jig from Joy-Con rail
- **Store safely**: Keep jig in accessible location for next time

---

## Quick Reference Commands

### The Essential Sequence
```
Power Off → Insert Jig → Hold VOL+ → Press POWER → Release → Inject Payload → Select Boot Option → Remove Jig
```

### Timing Details
- **Hold VOL+ for**: 3-5 seconds after pressing POWER
- **First boot wait**: 1-3 minutes (be patient)
- **Total process time**: 2-5 minutes depending on experience

---

## Common Issues and Solutions

### "Switch not detected by injector"
- **Check USB cable**: Try different cable/port
- **Verify RCM entry**: Screen should be completely black
- **Try different jig position**: Adjust contact points
- **Restart injector software**: Close and reopen

### "Screen lights up normally instead of staying black"
- **Jig not making contact**: Try different position/pressure
- **Wrong button combo**: Ensure VOL+ (not VOL-)
- **Timing issue**: Hold VOL+ before and during POWER press

### "Payload injection fails"
- **Driver issues**: Install/reinstall USB drivers (Windows)
- **Wrong payload**: Ensure using `payload.bin` from KEFIR
- **USB issues**: Try different port, cable, or computer

### "Black screen after payload injection"
- **Normal for first boot**: Wait 1-3 minutes
- **SD card issue**: Check if SD card is properly inserted
- **Corrupted files**: Try reinstalling KEFIR to SD card

---

## Alternative: If You Have AutoRCM Enabled

### Simplified Process with AutoRCM
1. **Power on normally** (no jig needed)
2. **Console auto-enters RCM** (black screen)
3. **Inject payload** using your preferred method
4. **Select boot option** in Hekate
5. **Boot to CFW**

**Note**: AutoRCM eliminates the jig step but still requires payload injection after every power-off.

---

## Time-Saving Tips

### Daily Usage Strategy
- **Use Sleep Mode**: Press POWER briefly instead of powering off
- **Sleep preserves CFW**: No re-injection needed when waking up
- **Only power off**: For extended storage or SD card changes

### Preparation Tips
- **Keep jig easily accessible**: Don't store it far away
- **Pre-load payload**: Have TegraRcmGUI ready with payload selected
- **Practice the sequence**: Becomes much faster with repetition

---

## SD Card Safety Guidelines

### ❌ **NEVER Remove SD Card While Switch is ON or in SLEEP MODE**

**Why SD card removal during sleep is dangerous**:
- **System still active**: Sleep mode keeps the system running in low-power state
- **Active file operations**: System may be performing background tasks
- **Cache management**: OS maintains file system cache in RAM
- **Save file corruption**: Game saves could be corrupted if write operations interrupted
- **System corruption**: File system metadata could be damaged

### ✅ **Safe SD Card Removal Process**
1. **Complete power shutdown**:
   - Hold POWER button for 12+ seconds (not just sleep)
   - Ensure screen is completely off and stays off
   - Wait 10-15 seconds after power-off

2. **Remove SD card safely**:
   - Carefully eject SD card from slot
   - Make any needed changes on PC
   - Reinsert SD card properly

3. **Boot sequence**:
   - Follow the complete power-up process above
   - Re-inject payload and boot normally

### Power State Comparison

| State | CFW Status | File Operations | SD Card Removal |
|-------|------------|-----------------|-----------------|
| **Fully On** | Active | Active | ❌ Never |
| **Sleep Mode** | Preserved | Suspended but system active | ❌ Never |
| **Complete Power Off** | Cleared | None | ✅ Safe after 10+ seconds |

### Best Practices

#### For File Management
- **Plan SD card operations** around complete power-off cycles
- **Use USB-C connection** via DBI to avoid SD card removal (see [Remote Installation Guide](Nintendo_Switch_Remote_Game_Installation_Guide.md))
- **Batch SD card changes** - do multiple operations at once

#### For Daily Usage
- **Use sleep mode** for breaks under 24 hours
- **Power off completely** only when:
  - Storing console for extended periods
  - Need to access SD card
  - Troubleshooting system issues
  - Battery is critically low

#### Emergency Situations
**If you accidentally removed SD card during sleep**:
1. **Don't panic** - data loss isn't guaranteed
2. **Reinsert SD card immediately**
3. **Power off completely** (hold POWER 12+ seconds)
4. **Boot normally** following power-up process
5. **Check for corruption**: Verify saves and system files
6. **Restore from backup** if needed

---

## Summary

**Complete power-off is required every time you need to remove the SD card safely**. Sleep mode preserves the custom firmware but keeps the system active enough that SD card removal could cause corruption.

**The trade-off**: Sleep mode is convenient for daily use but requires complete power-off (and payload re-injection) whenever you need to manage SD card contents directly.

**Recommended approach**: Use the USB-C network installation method to avoid SD card removal entirely for most file management tasks.