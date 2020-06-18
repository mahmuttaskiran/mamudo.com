#!/usr/bin/bash
flutter clean
flutter build web
if [[ "$1" ]]; then
    git add build -f
    git add .
    git commit -m "$1"
    git push
fi
