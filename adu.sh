#!/bin/bash

if [ $# -ne 1 ]; then
  echo "Usage: $0 path/to/directory"
  exit 1
fi

echo "Scanning directory $1"
/usr/bin/du $1 --max-depth=1 | sort -n -r | awk {'printf "%10.2fM %s\n", $1/1024, $2'}
echo "Done!"
