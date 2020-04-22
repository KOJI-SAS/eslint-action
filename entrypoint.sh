#!/bin/sh

# Exit if any subcommand fails
set -e 

if [ -z "$1" ]; then
    glob="."
else 
    glob="$@"
fi

echo "## Running ESLint"
sh -c "yarn --non-interactive lint"
