#!  /usr/bin/env bash
CMD="kjv"
TYPE=""
case "$4" in
    "short")
        TYPE="";;
    "long")
        TYPE="text";;
esac
BV="\\${TYPE}${3}verse"
case "$3" in
    "german")
        CMD="menge";;
    "latin")
        CMD="vul";;
    "greek")
        CMD="grb";;
esac
TEXT="${BV}{$1}{$2}"
echo "\tooltip{$TEXT}{$($CMD -W $1 $2 | sed 1d)}{$TEXT}"
