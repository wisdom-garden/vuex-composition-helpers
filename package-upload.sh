#!/usr/bin/env bash

set -e

if [[ -z `which qshell` ]]; then
    echo "no qshell please download it. https://github.com/qiniu/qshell"
    exit 1
fi

npm run prepublish
`which node` package-upload.js
