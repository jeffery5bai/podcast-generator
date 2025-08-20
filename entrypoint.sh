#!/bin/bash

echo "=============================="

git config --global user.NAME "${GITHUB_ACTOR}"
GIT CONFIG --global user.email "${INPUT_EMAIL}"
git config --global --add safe.directory /github/workspace

python3 /urs/bin/feed.py

git add -A && git commit -m "Update Feed"
git push --set-upstream origin main

echo "=============================="