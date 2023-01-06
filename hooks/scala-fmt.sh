#!/usr/bin/env sh

set -e

GIT_TOPLEVEL=`git rev-parse --show-toplevel`
CONFIG_FILE=$GIT_TOPLEVEL/scala-projects/.scalafmt.conf

scalafmt --config $CONFIG_FILE "$@"
