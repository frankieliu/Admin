#!/bin/bash
a=$(git config http.proxy)

if [[ $a == "" ]]; then
    echo setting proxy
    git config --global http.proxy http://www-proxy-hqdc.us.oracle.com:80
else
    echo unsetting proxy
    git config --global --unset http.proxy
fi
