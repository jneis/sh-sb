#!/bin/bash

echo "Usage $0 <message>"

MESSAGE=$1

git add -A
git commit -m $MESSAGE

