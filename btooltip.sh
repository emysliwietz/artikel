#!  /usr/bin/env bash
echo "\tooltip{$1 $2}{$(kjv -W $1 $2 | sed 1d)}{$1 $2}"
