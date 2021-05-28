#!/bin/bash -i

atm-bb bump-version $(pwd)/index.js
git commit -am 'bump'
git push origin main

