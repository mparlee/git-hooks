#!/usr/bin/env bash
set -e

output="$(ktlint -F "$@")"

[[ -z "$output" ]] && exit 0

echo >&2 "Kotlin files were changed to match formatting rules:"
for f in $output; do
  echo >&2 "  $PWD/$f"
done

exit 1

