#!/bin/sh
# Run inside the repo folder: creates github.com/devjwk/ce-portfolio and enables Pages
set -e
git init -b main && git add -A && git commit -m "Add Computer Engineering portfolio (formal and arcade versions)"
gh repo create ce-portfolio --public --source=. --push
gh api -X POST repos/devjwk/ce-portfolio/pages -f "source[branch]=main" -f "source[path]=/"
echo "https://devjwk.github.io/ce-portfolio/"
