#!/usr/bin/env bash

export PATH="/opt/homebrew/bin:/usr/local/bin:$PATH"

# If you use a proxy or corporate certs:
export HTTPS_PROXY="$HTTPS_PROXY"
export HTTP_PROXY="$HTTP_PROXY"
export SSL_CERT_FILE="/opt/homebrew/etc/ca-certificates/cert.pem"

exec "$@"

# ./claude-env.sh uv run python -m build
# https://chatgpt.com/c/69582a23-b8dc-832b-bb89-f8af842f079c
