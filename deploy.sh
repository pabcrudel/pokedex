#!/bin/bash
#
# Script to automate the deploy on github pages
#
# --------------------------------------------------------------------
# Author: Pablo Cru
# GitHub: https://github.com/pabcrudel
# --------------------------------------------------------------------

set -e

# Build
npm run build

# Save the latest commit hash as a string
LOGSTRING=$(git log)
COMMIT=$(echo $LOGSTRING | awk '{print $2}')

# Navigate into the build output directory
cd dist

git init 
git add -A
git commit -m "Deploy (commit: $COMMIT)"

git push -f https://github.com/pabcrudel/pokedex.git main:ph-pages

cd -