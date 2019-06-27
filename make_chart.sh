#!/bin/bash

if [ $# -ne 1 ] ; then
	echo "Error: No data file specified, aborting."
	echo
	echo "Usage: $0 datafile"
	exit 1
fi

if [ ! -f "$1" ] ; then
	echo "Error: $1 not found, aborting."
	exit 1
fi

# There is an assumption that the datafile ends in ".csv"
name=$(basename "$1" .csv)

# gnuplot doesn't do parameters very well, but we can dynamcally insert them
for plot in *.plot ; do
	sed "s|%NAME%|${name}|g" "${plot}" | gnuplot
done
