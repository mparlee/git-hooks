#!/usr/bin/env bash
set -e

output="$(scalafmt "$@")"

[[ -z "$output" ]] && exit 0

echo >&2 "Scala files were modified to match formatting rules:"
for f in $output; do
  echo >&2 "  $PWD/$f"
done

exit 1

