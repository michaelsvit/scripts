#!/bin/bash
# Simple script that pulls a specific type of files from sub-directories
if [ ! -d "$1" ] & [ -z "$2" ]
then
	echo 'Usage siphon <directory> <filetype>'
	exit
fi
find "$1" -name "*.$2" -exec mv {} . \;
