#!/bin/bash

# Script to update symlinks from Admin/... to Documents/Admin/...

echo "Symlink Update Tool"
echo "==================="
echo

# Check if Documents directory exists, if not create it
if [ ! -d "Documents" ]; then
    echo "Creating Documents directory..."
    mkdir -p "Documents"
fi

# Get all symlinks pointing to Admin/...
echo "Scanning for symlinks pointing to Admin/..."
echo

# Create an array of symlinks
declare -a symlinks=()
declare -a targets=()
index=0

while IFS= read -r line; do
    if [[ $line == *"->"*"Admin/"* ]]; then
        # Extract the symlink name
        link_name=$(echo "$line" | awk '{print $9}')

        # Extract the target
        target=$(echo "$line" | sed 's/.*-> //')

        # Only add if it's a file (not directory)
        if [ -L "$link_name" ]; then
            symlinks[index]="$link_name"
            targets[index]="$target"
            ((index++))
        fi
    fi
done < <(ls -la | grep "^l.*Admin/")

if [ ${#symlinks[@]} -eq 0 ]; then
    echo "No symlinks pointing to Admin/... found."
    exit 0
fi

# Display the symlinks
echo "Found the following symlinks:"
echo
for i in "${!symlinks[@]}"; do
    printf "%2d) %-20s -> %s\n" $((i+1)) "${symlinks[i]}" "${targets[i]}"
done
echo

# User selection
echo "Enter the numbers of the symlinks you want to update (comma-separated, e.g., 1,3,5)"
echo "Or 'all' to update all symlinks"
read -p "Your choice: " choice

# Process selection
declare -a selected_indices=()

if [[ "$choice" == "all" || "$choice" == "ALL" ]]; then
    # Select all
    for i in "${!symlinks[@]}"; do
        selected_indices+=($i)
    done
else
    # Parse comma-separated numbers
    IFS=',' read -ra ADDR <<< "$choice"
    for num in "${ADDR[@]}"; do
        # Remove whitespace
        num=$(echo "$num" | tr -d ' ')
        # Check if it's a valid number
        if [[ "$num" =~ ^[0-9]+$ ]] && [ "$num" -ge 1 ] && [ "$num" -le ${#symlinks[@]} ]; then
            selected_indices+=($((num-1)))
        else
            echo "Invalid selection: $num. Skipping."
        fi
    done
fi

if [ ${#selected_indices[@]} -eq 0 ]; then
    echo "No valid selections made. Exiting."
    exit 0
fi

# Show what will be updated
echo
echo "The following symlinks will be updated:"
echo "----------------------------------------"
for i in "${selected_indices[@]}"; do
    link_name="${symlinks[i]}"
    old_target="${targets[i]}"

    # Create new target path
    if [[ "$old_target" == "/c/cygwin64/home/2025/Admin/"* ]]; then
        # Absolute path - replace /c/cygwin64/home/2025/Admin/ with /c/cygwin64/home/2025/Documents/Admin/
        new_target="/c/cygwin64/home/2025/Documents/Admin/${old_target#/c/cygwin64/home/2025/Admin/}"
    else
        # Relative path - prepend Documents/ to Admin/...
        new_target="Documents/$old_target"
    fi

    printf "%-20s: %s\n" "$link_name" "$old_target"
    printf "%-20s: %s\n" "" "-> $new_target"
    echo
done

# Confirm
read -p "Proceed with updating these symlinks? (y/N): " confirm
if [[ ! "$confirm" =~ ^[Yy]$ ]]; then
    echo "Operation cancelled."
    exit 0
fi

# Create the necessary directory structure in Documents/Admin
echo
echo "Creating directory structure in Documents/Admin..."
for i in "${selected_indices[@]}"; do
    target="${targets[i]}"

    # Convert to Documents/Admin path
    if [[ "$target" == "/c/cygwin64/home/2025/Admin/"* ]]; then
        doc_path="Documents/Admin/${target#/c/cygwin64/home/2025/Admin/}"
    else
        doc_path="Documents/$target"
    fi

    # Get directory path
    dir_path=$(dirname "$doc_path")

    # Create directory if it doesn't exist
    if [ ! -d "$dir_path" ]; then
        echo "Creating directory: $dir_path"
        mkdir -p "$dir_path"
    fi
done

# Move files if they don't exist in Documents/Admin
echo
echo "Moving files to Documents/Admin..."
for i in "${selected_indices[@]}"; do
    target="${targets[i]}"

    # Convert to Documents/Admin path
    if [[ "$target" == "/c/cygwin64/home/2025/Admin/"* ]]; then
        doc_path="Documents/Admin/${target#/c/cygwin64/home/2025/Admin/}"
        abs_target="$target"
    else
        doc_path="Documents/$target"
        abs_target="$target"
    fi

    # Move file if it exists and not already in Documents
    if [ -f "$abs_target" ] && [ ! -f "$doc_path" ]; then
        echo "Moving: $abs_target -> $doc_path"
        cp "$abs_target" "$doc_path"
    elif [ -f "$doc_path" ]; then
        echo "File already exists: $doc_path"
    else
        echo "Warning: Source file not found: $abs_target"
    fi
done

# Update symlinks
echo
echo "Updating symlinks..."
success_count=0
for i in "${selected_indices[@]}"; do
    link_name="${symlinks[i]}"
    old_target="${targets[i]}"

    # Create new target path
    if [[ "$old_target" == "/c/cygwin64/home/2025/Admin/"* ]]; then
        # Absolute path - replace /c/cygwin64/home/2025/Admin/ with /c/cygwin64/home/2025/Documents/Admin/
        new_target="/c/cygwin64/home/2025/Documents/Admin/${old_target#/c/cygwin64/home/2025/Admin/}"
    else
        # Relative path - prepend Documents/ to Admin/...
        new_target="Documents/$old_target"
    fi

    # Remove old symlink
    rm "$link_name"

    # Create new symlink
    if ln -s "$new_target" "$link_name"; then
        echo "Updated: $link_name -> $new_target"
        ((success_count++))
    else
        echo "Error: Failed to update $link_name"
    fi
done

echo
echo "Summary:"
echo "--------"
echo "Successfully updated $success_count out of ${#selected_indices[@]} symlinks"
echo
echo "All files are now located in: Documents/Admin/"
echo "Symlinks have been updated to point to the new location"