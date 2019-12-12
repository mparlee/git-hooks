#!/usr/bin/env sh

set -e

GIT_TOPLEVEL=`git rev-parse --show-toplevel`
CONFIG_FILE=$GIT_TOPLEVEL/.scalafmt.conf

scalafmt --config $CONFIG_FILE "$@"
