#!/bin/sh

# Exit if any subcommand fails
set -e

echo "## Running ESLint"
sh -c "yarn --non-interactive lint"
