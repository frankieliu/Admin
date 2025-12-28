# repeat keys

1. terminal

```bash
defaults write com.microsoft.VSCode ApplePressAndHoldEnabled -bool false
```

2. restart code

# long story

To enable key repetition in VS Code on macOS, you need to disable the system's "press and hold" feature for character alternatives using a Terminal command, and ensure your system's key repeat settings are configured correctly. [1, 2]  
1. Configure macOS System Settings [3]  
First, ensure your general macOS keyboard settings are set to repeat keys at a desired rate: 

• Open System Settings (or System Preferences). 
• Click Keyboard. 
• In the Keyboard tab, adjust the following sliders: 

	• Key Repeat rate: Drag this slider all the way to Fast. 
	• Delay until repeat: Drag this slider all the way to Short. [3, 5, 6, 7, 8]  

2. Run a Terminal Command for VS Code [9]  
macOS uses a "press and hold" feature (to type accented characters) by default, which overrides the standard key repeat function in some applications like VS Code. You can disable this specifically for VS Code: 

1. Quit VS Code completely (ensure you use  or right-click the dock icon and select Quit, not just close the window). 
2. Open Terminal (found in ). 
3. Execute the following command, which disables the press-and-hold feature for the standard VS Code application: 
4. If you use a different version (like Insiders or Codium), use the relevant command: 

	• For VS Code Insiders:  
	• For VS Codium:  

5. Restart VS Code. The key repeat should now work as expected. [1, 2, 11, 12, 13, 14]  

Troubleshooting 

• Global Override: If the app-specific command does not work, a global setting might be overriding it. You can reset the global default by running: . After this, the app-specific command should take effect. 
• Log Out: Some users have reported needing to log out of their macOS user account and log back in for the changes to fully apply. [12, 15, 16, 17]  

AI responses may include mistakes.

[1] https://datumorphism.leima.is/til/misc/vscode/vscode-on-mac-do-not-repeat/
[2] https://github.com/VSCodeVim/Vim/issues/345
[3] https://support.apple.com/en-au/guide/mac-help/mchl0311bdb4/mac
[4] https://discussions.apple.com/thread/250797717
[5] https://mcmw.abilitynet.org.uk/how-to-stop-repeating-keyboard-characters-accidentally-in-macos-12-monterey
[6] https://learn.microsoft.com/en-gb/answers/questions/5496066/autosave-option-greyed-out-in-office-365-on-macboo
[7] https://support.apple.com/en-ae/guide/mac-help/mchl0311bdb4/mac
[8] https://learn.microsoft.com/en-us/answers/questions/5011924/ms-word-for-mac-and-key-repeat
[9] https://github.com/microsoft/vscode/issues/161159
[10] https://datumorphism.leima.is/til/misc/vscode/vscode-on-mac-do-not-repeat/
[11] https://stackoverflow.com/questions/73706636/how-can-i-get-key-repeat-to-work-with-vim-in-vscodium
[12] https://forum.cursor.com/t/key-down-repeat-with-vim-extension/1581
[13] https://stackoverflow.com/questions/79385470/keeping-vim-motions-keys-pressed-doesnt-move-the-cursor-in-vs-code
[14] https://stackoverflow.com/questions/65422670/why-doesnt-vs-code-auto-update-on-macos
[15] https://www.reddit.com/r/applehelp/comments/17dmbts/why_cant_i_repeat_keys_by_holding_down_macbook/
[16] https://stackoverflow.com/questions/39972335/how-do-i-press-and-hold-a-key-and-have-it-repeat-in-vscode
[17] https://apple.stackexchange.com/questions/390626/how-to-repeat-a-key-in-mac-while-holding-down

