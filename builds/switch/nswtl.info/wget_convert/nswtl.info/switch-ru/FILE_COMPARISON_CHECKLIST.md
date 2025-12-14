# File Comparison Checklist: Current MD Files vs Alternate Directory

**Date:** 2025-12-14
**Current Directory:** /c/cygwin64/home/2025/Projects/nswtl.info/nswtl.info/switch-ru
**Alternate Directory:** /c/cygwin64/home/2025/Projects/nswtl.info/nswtl.info/switch-ru/alternate/

## ✅ Files with Clear Correspondence (26 files)

| Current File | Alternate File | Section | Notes |
|--------------|----------------|---------|-------|
| `index.md` | `guide01_01_index.md` | guide01 | Main index page |
| `get-started.md` | `guide02_01_get_started.md` | guide02 | Getting started guide |
| `preparation-caffeine.md` | `guide02_02_prep_caffeine.md` | guide02 | Caffeine preparation |
| `modchip.md` | `guide02_03_modchip.md` | guide02 | Modchip information |
| `preparation-modchip.md` | `guide02_04_modchip_install.md` | guide02 | Modchip installation prep |
| `fusee-gelee.md` | `guide03_01_fusee_gelee.md` | guide03 | Fusée Gelée exploit |
| `faq.md` | `guide03_02_faq.md` | guide03 | Frequently asked questions |
| `r4.md` | `guide03_03_r4s.md` | guide03 | R4S/R4 card |
| `rcmloader.md` | `guide03_04_rcm_loader.md` | guide03 | RCM loader |
| `kefir.md` | `guide03_05_keefir.md` | guide03 | KEFIR custom firmware |
| `preparation-fuse.md` | `guide04_01_prep_fusee.md` | guide04 | Fusée Gelée preparation |
| `preparation-white.md` | `guide04_02_transition_to_emunand.md` | guide04 | Transition to EmuNAND |
| `cfw.md` | `guide04_03_custom_fw.md` | guide04 | Custom firmware |
| `update-fw.md` | `guide04_04_safe_fw.md` | guide04 | Safe firmware update |
| `link-account.md` | `guide04_05_linking.md` | guide04 | Account linking |
| `games.md` | `guide04_06_install_games.md` | guide04 | Game installation |
| `troubleshooting.md` | `guide04_07_prob_soln.md` | guide04 | Problem solving |
| `cheats.md` | `guide04_08_cheats.md` | guide04 | Cheat codes |
| `backup-saves.md` | `guide04_09_saves.md` | guide04 | Save backups |
| `lanplay.md` | `guide04_10_multiplayer.md` | guide04 | Multiplayer/network play |
| `hbl.md` | `guide04_11_homebrew.md` | guide04 | Homebrew launcher |
| `kefir.md` | `guide05_01_kefir.md` | guide05 | KEFIR guide (duplicate entry) |
| `tinfoil.md` | `guide05_02_tinfoil.md` | guide05 | Tinfoil installer |
| `caffeine.md` | `guide05_03_caffeine.md` | guide05 | Caffeine exploit (duplicate entry) |
| `backup-nand.md` | `guide06_01_nand.md` | guide06 | NAND backup |
| `emunand.md` | `guide07_01_install_emunand.md` | guide07 | EmuNAND installation |
| `usage.md` | `guide08_01_already_flashed.md` | guide08 | Using hacked console |
| `sd-macos.md` | `guide10_01_macos_sd.md` | guide10 | macOS SD card guide |

### ❓ Files in Alternate Directory with No Correspondence (2 files)

| Alternate File | Suggested Current File | Notes |
|----------------|------------------------|-------|
| `guide00_01_top.md` | ? | Top-level introduction guide - not present in current directory |
| `metascore100.md` | ? | Special content page - appears to be unrelated to main guides |

### ❌ Current Files with No Correspondence in Alternate (4 files)

| Current File | Alternate File | Notes |
|--------------|----------------|-------|
| `autorcm.md` | ❌ None | AutoRCM setup and configuration |
| `block-update.md` | ❌ None | Guide for blocking system updates |
| `downgrade_fw.md` | ❌ None | Firmware downgrade instructions |
| `ftp.md` | ❌ None | FTP server setup and file transfer |
| `menu.md` | ❌ None | Menu index or navigation guide |

### 📁 Other Files

| File | Type | Notes |
|------|------|-------|
| `image.png` | Image asset | Visual asset for the alternate guides |

## Directory Statistics

| Metric | Current Directory | Alternate Directory |
|--------|-------------------|--------------------|
| Total markdown files | 34 | 33 (excluding image) |
| Files with correspondence | 26 | 26 |
| Files without correspondence | 4 | 2 |
| Duplicate mappings | 2 (kefir, caffeine) | 2 (kefir, caffeine) |

## Analysis

### Structure Differences

**Current Directory:**
- Uses descriptive, user-friendly filenames
- Flat structure with all files at root level
- Easier to understand file contents from name

**Alternate Directory:**
- Uses numbered prefix system (guideXX_XX)
- Organized into logical sections (00-10)
- Follows a step-by-step tutorial progression
- More structured for sequential learning

### Content Organization in Alternate Directory

- **guide00**: Introduction/top level
- **guide01**: Main index
- **guide02**: Getting started and preparation
- **guide03**: Hardware and basic exploits
- **guide04**: Core functionality and usage
- **guide05**: Tools and advanced topics
- **guide06**: Backup and recovery
- **guide07**: EmuNAND
- **guide08**: Post-installation usage
- **guide09**: Save management
- **guide10**: Platform-specific (macOS)

## Recommendations

1. **Missing files to create from alternate:**
   - Create a top-level introduction page from `guide00_01_top.md`
   - Review `metascore100.md` for potential useful content

2. **Missing files to add to alternate:**
   - Add `autorcm.md` content
   - Add `block-update.md` content
   - Add `downgrade_fw.md` content
   - Add `ftp.md` content
   - Add `menu.md` content

3. **Considerations:**
   - The alternate directory's structure is more suitable for a step-by-step tutorial
   - Current filenames are more SEO-friendly and descriptive
   - Duplicate mappings should be consolidated

## Action Items

- [ ] Review `guide00_01_top.md` for potential integration
- [ ] Create missing files in current directory from alternate content
- [ ] Add current-only files to alternate structure
- [ ] Consolidate duplicate entries (kefir, caffeine)