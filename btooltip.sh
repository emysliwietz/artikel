#!  /usr/bin/env bash
CMD="kjv"
case "$3" in
    "german")
        CMD="menge";;
    "latin")
        CMD="vul";;
    "greek")
        CMD="grb";;
esac
echo "\tooltip{$1 $2}{$($CMD -W $1 $2 | sed 1d)}{$1 $2}"
