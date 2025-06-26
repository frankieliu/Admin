# actions for terminal and editor

C-k C-s for shortcut keys

Search for workbench.action.terminal.focusAtIndex1
Search for workbench.action.focusActiveEditorGroup
Search for workbench.files.focusFilesExplorer

Map Alt-B to the first and second ones.
Note that need to change then when (editorFocus/terminalFocus respectively)

# useful links
[terminal](https://superuser.com/questions/1270103/how-to-switch-the-cursor-between-terminal-and-code-in-vscode)
- very useful information
- in particular above section contains info from this link

[ToggleSideBar when TerminalFocused](https://stackoverflow.com/questions/68858411/toggle-side-bar-visibility-when-terminal-is-focused)
- don't need this one Ctrl-E does the job
- Very important:

  - You can allow certain C-E for example to be used
    in terminal mode by adding the command to 
    terminal.integrated.commandsToSkipShell:
    ```
    "terminal.integrated.commandsToSkipShell": [
        "workbench.action.toggleSidebarVisibility"
    ]
    ```
    This will allow you to override C-E from being
    sent to the terminal.

[Enable C-w, w](https://github.com/VSCodeVim/Vim/issues/1988)
```
  { // Focus (and open if necessary) files explorer if not yet focused
    "key": "ctrl+shift+e",
    "command": "workbench.files.action.focusFilesExplorer",
    "when": "viewContainer.workbench.view.explorer.enabled && !editorFocus",
  },
  { // Make same binding hide files explorer when already focused
    "key": "ctrl+shift+e",
    "command": "workbench.action.toggleSidebarVisibility",
    "when": "viewContainer.workbench.view.explorer.enabled && explorerViewletVisible && sideBarFocus && !inputFocus && !textInputFocus && !renameInputVisible"
  },
  { // Instantly return focus back to first editor
    "key": "ctrl+w",
    "command": "workbench.action.focusFirstEditorGroup",
    "when": "sideBarFocus"
  },
  { // Close sidebar except for when any toggled input is focused
    "key": "escape",
    "command": "workbench.action.toggleSidebarVisibility",
    "when": "!explorerViewletVisible && sideBarFocus && !inputFocus && !textInputFocus && !renameInputVisible || filesExplorerFocus && !inputFocus && !textInputFocus && !renameInputVisible || openEditorsFocus && !renameInputVisible || searchViewletFocus"
  },
  ```