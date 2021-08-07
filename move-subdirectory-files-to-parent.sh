#!/bin/bash

# cd '~/directory_of_parent_folder'
# Change -iname pattern

find . -mindepth 1 -type f -iname '*slides.pdf'  -print -exec mv {} . \;