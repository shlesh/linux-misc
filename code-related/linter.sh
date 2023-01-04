#!/bin/bash

# Iterate through all the files in the current directory
for file in *
do

  extension="${file##*.}"

  # To lint the file based on its extension
  case "$extension" in
    py)
      echo "Linting Python file $file"
      pylint "$file"
      ;;
    c)
      echo "Linting C file $file"
      cpplint "$file"
      ;;
    cpp)
      echo "Linting C file $file"
      cpplint "$file"
      ;;
    java)
      echo "Linting Java file $file"
      javac -Xlint "$file"
      ;;
    js)
      echo "Linting JavaScript file $file"
      eslint "$file"
      ;;
    *)
      # Skip other non code related files
      echo "Skipping file $file"
      ;;
  esac
done
