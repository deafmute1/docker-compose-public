#!/usr/bin/env bash

find . -type f -exec sh -c "rg -P --passthru '(?i)pass\K.*=\K.*' -r secret $1 | sponge $1" {} \;

find . -type f -exec sh -c "rg -P --passthru '(?i)api\K.*=\K.*' -r secret $1 | sponge $1" {} \;
