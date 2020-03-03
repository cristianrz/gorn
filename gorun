#!/bin/sh

set -eu

DEST="$(mktemp)".go
trap 'rm -f "$DEST"' EXIT

[ "$#" -lt 1 ] && exit 1

cp "$1" "$DEST" && shift

sed -i 1d "$DEST"

go run "$DEST" "$@"
