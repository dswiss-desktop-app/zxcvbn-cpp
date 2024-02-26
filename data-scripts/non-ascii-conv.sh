#!/bin/bash
#
# usage: non-ascii-conv.sh file
#
sed -i -e "s/ß/ss/g" $1
sed -i -e "s/ä/ae/g" $1
sed -i -e "s/ü/ue/g" $1
sed -i -e "s/ö/oe/g" $1
#
sed -i -e "s/Á/A/g" $1
sed -i -e "s/à/a/g" $1
sed -i -e "s/â/a/g" $1
sed -i -e "s/á/a/g" $1
sed -i -e "s/ç/c/g" $1
sed -i -e "s/È/E/g" $1
sed -i -e "s/è/e/g" $1
sed -i -e "s/é/e/g" $1
sed -i -e "s/ê/e/g" $1
sed -i -e "s/ë/e/g" $1
sed -i -e "s/Í/I/g" $1
sed -i -e "s/İ/I/g" $1
sed -i -e "s/î/i/g" $1
sed -i -e "s/í/i/g" $1
sed -i -e "s/ï/I/g" $1
sed -i -e "s/Ò/O/g" $1
sed -i -e "s/ó/o/g" $1
sed -i -e "s/ô/o/g" $1
sed -i -e "s/Ú/U/g" $1
sed -i -e "s/Ù/U/g" $1
sed -i -e "s/ú/u/g" $1
