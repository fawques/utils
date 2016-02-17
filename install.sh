#!/bin/bash

# install all files in SRC to DEST
# create the folders needed at DEST
# and copy the files.
# Based on http://unix.stackexchange.com/a/155633

DEST="${@:${#@}}"
ABS_DEST="$(cd "$(dirname "$DEST")"; pwd)/$(basename "$DEST")"

for SRC in ${@:1:$((${#@} -1))}; do   (
    cd "$SRC";
    find . -type d -exec mkdir -p "${ABS_DEST}"/\{} \;
    find . -type f -exec cp \{} "${ABS_DEST}"/\{} \;
    find . -type l -exec cp -a \{} "${ABS_DEST}"/\{} \;
) done
