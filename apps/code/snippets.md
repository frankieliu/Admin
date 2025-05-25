# how to start snippet in vim
Snippet suggestions come with intellisense
To trigger IntelliSense you Ctrl - Space

# allow tab to trigger snippet
- Ctrl+, go to settings -- these seem to adjust the System settings, not the user settings
- Search: editor.tabCompletion

- Ctrl-k Ctrl-s for keyboard shortcuts
  - note that Tab was added for Insert Snippet

Not so important:
- editor.snippetSuggestions: inline (or top)
- editor.quickSuggestions
  - enables suggestions after typing a few characters
- editor.suggest.snippetsPreventQuickSuggestions
  - prevent snippets from interfering with quick suggestions

# Add your own snippet

[snippets](https://code.visualstudio.com/docs/editing/userdefinedsnippets)

File > Preferences > Configure Snippets > svelte

It opens .config/Code/User/
sni
 "svelte-script-tag": {
        "prefix": "s-script",
        "body": [
            "<script lang=ts>",
            "\t${1:// your script goes here}",
            "</script>"
        ],
        "description": "add a script to your svelte file"
    },
