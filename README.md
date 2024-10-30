# File Analyzer

## Overview
The Lisp File Analyzer script reads a text file, processes each line, counts the occurrences of each word, and outputs a frequency table of words.

## How to Use
1. Ensure the script is loaded in your Common Lisp environment.
2. Call `(analyze-file "/path/to/your/file.txt")` to get a hash table of word counts.
3. Use `(print-frequency-table <result>)` to display word frequencies.

## Features
- Uses hash tables for efficient frequency counting.
- Handles case insensitivity by converting words to lowercase.
- Demonstrates file handling in Common Lisp.
