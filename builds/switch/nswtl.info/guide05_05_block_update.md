These instructions are primarily intended for Caffeine users. If you use Fusée Gelée, you don't need to follow these instructions. Atmosphere has already done everything for you.

# Pros
- It doesn't block access to Nintendo servers, but it does block the ability to log in. This means that when communicating with the Nintendo server, the server simply won't recognize the console as a Switch.
- It will work even if Nintendo changes the authorization method, server addresses, or who knows what else.
- No additional configuration required
# Cons
- Requires interaction with system files through the application, so it is potentially dangerous

# Instructions
## Blocking access to Nintendo servers
1. Create a backup of your console's NAND and place it in a safe place if you haven't already done so.
1. Log in to hekate ▼ using an exploit supported on your console, by running the payload  payload.bin  from the kefir  .zip  archive ▼
   1. Hold (VOL-) on the console when the kefir logo appears to enter hekate
      - Skip this step if you are already in hekate
1. Establish kefir ▼ according to the instructions in its repository
   - If you've already done it, there's no need to do it again.
1. Go to the “ Payloads ” menu
1. Select “ Incognito_RCM.bin ”
1. Select “ Backup (SysNAND) ” or “ Backup (EmuMMC) ” depending on which section you want to block access to Nintendo servers.
- Menu navigation is done with the volume buttons, and selection is done with the (POWER) button
- If you are not using EmuNAND, select SysNAND
- If you use EmuNAND for pirated drives and SysNAND for licensed drives, choose EmuNAND.
1 Select “ Incognito (SysNAND) ” or “ Incognito (EmuMMC) ” depending on which section you want to block access to Nintendo servers.
1. Wait for the installation to complete and press any button
1. Select Power Off to turn off the console.
1. Remove the memory card from the console and insert it into the PC.
1. Copy it  prodinfo_sysnand.bin  from the root of your memory card to a safe location - this is a backup of your PRODINFO in an unmodified state.
1. Launch the console
## Restoring access to Nintendo servers
1. Copy  prodinfo_sysnand.bin  to the root of your card
1. Log in to hekate ▼ using an exploit supported on your console, by running the payload  payload.bin  from the kefir  .zip  archive ▼
   1. Hold (VOL-) on the console when the kefir logo appears to enter hekate
      - Skip this step if you are already in hekate
1. Establish kefir ▼ according to the instructions in its repository
   - If you've already done it, there's no need to do it again.
1. Go to the “ Payloads ” menu
1. Select “ Incognito_RCM.bin ”
1. Select “ Restore (SysNAND) ” or “ Restore (EmuMMC) ” depending on which partition you want to restore PRODINFO to
1. Wait for the installation to complete and press any button