#!/bin/bash

for file in files/*; do
  filename=$(basename "$file")
  first_letter=$(echo "${filename:0:1}" | tr 'A-Z' 'a-z')

  if [ -d "$first_letter" ]; then
    mv "$file" "$first_letter/"
  fi
done

