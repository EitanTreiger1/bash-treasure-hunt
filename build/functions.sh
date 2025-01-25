#!/usr/bin/env bash

#
# Generally useful functions for building the puzzle
#

# Make something that looks synatactically like a secret.
function secretish() {
    printf "%x: %s" "$SRANDOM" "$1"
}

function fake_file_clue() {
    printf "The next secret is in %x.txt" "$SRANDOM"
}

function random_file_in() {
    find "$1"  -maxdepth 1 -type f | shuf | head -1
}
