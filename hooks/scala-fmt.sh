#!/usr/bin/env bash
set -e

output="$(scalafmt -l "$@")"

[[ -z "$output" ]] && exit 0

echo >&2 "Scala files must be formatted with scalafmt. Please run:"
for f in $output; do
  echo >&2 "  scalafmt $PWD/$f"
done

exit 1

