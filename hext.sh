#!/bin/sh

# hext: a simple hexadecimal color extractor 
# prints out the 16 main colors from a picture

# requires: imagemagick

HELP="usage: hext <picture.jpg>"

[ $# -ne 1 ] && echo "${HELP}" && exit 1
[ ! -f "${1}" ] && echo "error: ${1} does not exist" && exit 2

convert "${1}" +dither -colors 16 -unique-colors -format "%c" -depth 8 txt:- | \
	sed '1d; s/.*\(#.\{6\}\).*/\1/'
