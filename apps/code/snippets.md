# Add your own snippet

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
