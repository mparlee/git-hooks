#!/usr/bin/env bash
set -e

output="$(ktlint "$@")"

[[ -z "$output" ]] && exit 0

echo >&2 "Kotlin files must be formatted with kotlin. Please run:"
for f in $output; do
  echo >&2 "  ktlint -F $PWD/$f"
done

exit 1

