#!/bin/bash
set -e

msg="$1"

if [ -z "$msg" ]; then
    echo "Enter your commit message: "
    read msg
fi

git add .
git commit -m "$msg"

git fetch upstream

git checkout main

git merge upstream/main

git push origin main

git checkout dev

git merge main

git push origin dev

