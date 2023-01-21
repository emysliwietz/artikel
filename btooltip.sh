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
BOOK="$(echo $1 | sed 's/^IV/4/;s/^III/3/;s/^II/2/;s/^I/1/;')"
echo "\tooltip{$1 $2}{$($CMD -W $BOOK $2 | sed 1d | tr '\n' '\t')}{$TEXT}"
