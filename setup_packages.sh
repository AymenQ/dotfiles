#!/bin/bash
packagelist=meta/configs/package.list
xargs -a <(awk '! /^ *(#|$)/' "$packagelist") -r -- sudo apt-get install
