#!/usr/bin/env bash

# From original Script:
# Imgur script by Bart Nagel <bart@tremby.net>
# Improvements by Tino Sino <robottinosino@gmail.com>
# Version 6 or more
# I release this into the public domain. Do with it what you will.
# The latest version can be found at https://github.com/tremby/imgur.sh


# My modifications to the original script in order to use access token instead of anonymous
#
# From API docs: https://apidocs.imgur.com/
# 1. Register app
# 2. Get client_id and client_secret
# 3. Request an access token
#    https://api.imgur.com/oauth2/authorize?client_id=YOUR_CLIENT_ID&response_type=REQUESTED_RESPONSE_TYPE&state=APPLICATION_STATE
# 4. Jot down the new URL:
#    https://imgur.com/?state=some_app_state#access_token=7c4fa6a11f9bec3b0320589ddeafae8efa10fab8&expires_in=315360000&token_type=bearer&refresh_token=dd9dec732ce055c625a5fd0fdead658f5468e3e8&account_username=eehn&account_id=23231394
# 5. Change the access_token in this script
#
# Note: don't use anonymous (as in the original script from Bart)
# Why: because it makes it harder to delete and manage your images
# Better: use the token (although it expires after a month), everything goes
# to your account, and it is private
#
# To get a new token via refresh:
# 1. use api tester
# 2. POST to https://api.imgur.com/oauth2/token 
# {
#  "refresh_token": "dd9dec732ce055c625a5fd0fdead658f5468e3e8",
#  "client_id": "6921538ee451496",
#  "client_secret": "f046e970166340ef74498ba770002c953e14a084",
#  "grant_type": "refresh_token"
# }
# 3. Jot down the new access token
#

# replace with your own or specify yours as IMGUR_CLIENT_ID environment variable
# to avoid limits
# default_client_id=c9a6efb3d7932fd # Original client id from Bart

# 6921538ee451496
# f046e970166340ef74498ba770002c953e14a084
default_client_id=6921538ee451496
access_token=7c4fa6a11f9bec3b0320589ddeafae8efa10fab8
refresh_token=dd9dec732ce055c625a5fd0fdead658f5468e3e8

# account_username=eehn&account_id=23231394
#
# access_token=8a522a6b3a0aa5e83b269cd50313713e6d45698b
# https://imgur.com/?state=APPLICATION_STATE#access_token=8a522a6b3a0aa5e83b269cd50313713e6d45698b&expires_in=315360000&token_type=bearer&refresh_token=ac06f0fe6c3565171bfcf80b54efd564155e0288&account_username=eehn&account_id=23231394
#
# client_id="${IMGUR_CLIENT_ID:=$default_client_id}"
# curl --location 'https://api.imgur.com/3/image' \
# --header 'Authorization: Client-ID {{clientId}}' \
# --form 'image=@"/home/flakrim/Downloads/GHJQTpX.jpeg"' \
# --form 'type="image"' \
# --form 'title="Simple upload"' \
# --form 'description="This is a simple image upload in Imgur"'

# Function to output usage instructions
function usage {
	echo "Usage: $(basename $0) [<filename|URL> [...]]" >&2
	echo
	echo "Upload images to imgur and output their new URLs to stdout. Each one's" >&2
	echo "delete page is output to stderr between the view URLs." >&2
	echo
	echo "A filename can be - to read from stdin. If no filename is given, stdin is read." >&2
	echo
	echo "If xsel, xclip, pbcopy, or clip is available," >&2
	echo "the URLs are put on the X selection or clipboard for easy pasting." >&2
	echo "Use environment variables to set special options for your clipboard program (see code)." >&2
}

# Function to upload a path
# First argument should be a content spec understood by curl's -F option
function upload {
  type=image 
  title=$(basename $(basename $1) .png)
  description=$title 
  curl --location 'https://api.imgur.com/3/image.xml' \
    --form 'image=@"'$1'"' \
    --form 'type="image"' \
    --form 'title="'$title'"' \
    --form 'description="'$description'"' \
    --header "Expect: " \
    --header 'Authorization: Bearer '$access_token
    # --header 'Authorization: Client-ID '$client_id \
  # Modified the header above to use the access_token
  # instead of using the Client-ID
  #
  # curl -s -H "Authorization: Client-ID $client_id" -H "Expect: " \
	#  -F "image=$1" https://api.imgur.com/3/image.xml 

	# The "Expect: " header is to get around a problem when using this through
	# the Squid proxy. Not sure if it's a Squid bug or what.
}

# Check arguments
if [ "$1" == "-h" -o "$1" == "--help" ]; then
	usage
	exit 0
elif [ $# -eq 0 ]; then
	echo "No file specified; reading from stdin" >&2
	exec "$0" -
fi

# Check curl is available
type curl &>/dev/null || {
	echo "Couldn't find curl, which is required." >&2
	exit 17
}

clip=""
errors=false

# Loop through arguments
while [ $# -gt 0 ]; do
	file="$1"
	shift

	# Upload the image
	if [[ "$file" =~ ^https?:// ]]; then
		# URL -> imgur
		response=$(upload "$file") 2>/dev/null
	else
		# File -> imgur
		# Check file exists
		if [ "$file" != "-" -a ! -f "$file" ]; then
			echo "File '$file' doesn't exist; skipping" >&2
			errors=true
			continue
		fi
		response=$(upload "$file") 2>/dev/null
	fi

	if [ $? -ne 0 ]; then
		echo "Upload failed" >&2
		errors=true
		continue
	elif echo "$response" | grep -q 'success="0"'; then
		echo "Error message from imgur:" >&2
		msg="${response##*<error>}"
		echo "${msg%%</error>*}" >&2
		errors=true
		continue
	fi

  # echo Here is the response
  # echo $response
  # echo Here is the end of response

	# Parse the response and output our stuff
	url="${response##*<link>}"
	url="${url%%</link>*}"
	delete_hash="${response##*<deletehash>}"
	delete_hash="${delete_hash%%</deletehash>*}"
	echo $url
	echo "Delete page: https://imgur.com/delete/$delete_hash" >&2

	# Append the URL to a string so we can put them all on the clipboard later
	clip+="$url"
	if [ $# -gt 0 ]; then
		clip+=$'\n'
	fi
done

# Put the URLs on the clipboard if we can
if type pbcopy &>/dev/null; then
	echo -n "$clip" | pbcopy $IMGUR_PBCOPY_OPTIONS
elif type clip &>/dev/null; then
	echo -n "$clip" | clip $IMGUR_CLIP_OPTIONS
elif [ $DISPLAY ]; then
	if type xsel &>/dev/null; then
		echo -n "$clip" | xsel -i $IMGUR_XSEL_OPTIONS
	elif type xclip &>/dev/null; then
		echo -n "$clip" | xclip $IMGUR_XCLIP_OPTIONS
	else
		echo "Haven't copied to the clipboard: no xsel or xclip" >&2
	fi
else
	echo "Haven't copied to the clipboard: no \$DISPLAY or pbcopy or clip" >&2
fi

if $errors; then
	exit 1
fi
