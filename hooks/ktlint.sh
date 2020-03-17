#!/usr/bin/env bash
set -e

function run_ktlint () {
  output=$(ktlint -F "$@")
  echo "$output"
}

output=$(trap run_ktlint EXIT)

[[ -z "$output" ]] && exit 0

if [[ $output == *"cannot be auto-corrected"* ]]; then
  echo "$output"
else
  echo >&2 "Kotlin files were changed to match formatting rules:"
  for f in $output; do
    echo >&2 "  $PWD/$f"
  done
fi

exit 1

