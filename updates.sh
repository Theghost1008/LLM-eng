#!/bin/bash
git fetch upstream
git checkout main
git merge upstream/main
git push origin main
git pull
git checkout dev
git merge main
git push origin dev