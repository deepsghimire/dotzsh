#!/bin/bash

set -xeuo pipefail
declare -A dir_map

while read -r destination source ; do
    dir_map[$source]=$destination
done < meta

declare -a existing_files=()

for dest in "${dir_map[@]}"; do
    if [[ -s "$dest" ]]; then
        existing_files+=("$dest")
    fi
done


if [[ "${#existing_files}" -ne 0 ]]; then
    echo files exists in directory >&2
    (IFS=,; printf "\t %s" "${existing_files[*]}")
    exit 1
fi


for source in "${!dir_map[@]}";do
    echo symlinking "$source" to "${dir_map[$source]}" >&2
    ln -s "$source" "${dir_map[$source]}"
done
