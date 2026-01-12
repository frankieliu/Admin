# Convert image to Letter PDF (Landscape/Portrait) with 0.25" margins
topdf() {
    for img in "$@"; do
        # This takes the filename without the extension and adds .pdf
        output="${img%.*}.pdf"
        
        img2pdf "$img" \
            -s letter \
            -b 0.25in \
            -a \
            -o "$output"
            
        echo "Created: $output"
    done
}


alias rm='rm -i'
alias cp='cp -i'
alias mv='mv -i'

# Trash commands
# tp: Trash Put
alias tp='trash'
alias emptytrash="rm -rf ~/.Trash/*"
alias lstrash="ls -F ~/.Trash"
alias opentrash="open ~/.Trash"

# preview
alias preview="qlmanage -p >/dev/null 2>&1"
