#!/bin/bash

# Set the word to search
word="mississippi"

grep -o "s" <<< "$word" | wc -l
