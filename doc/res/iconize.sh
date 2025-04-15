#!/bin/sh

if [ ! -d "res_icon" ]; then
	echo "could not find directory"
	exit 1
fi

convert \
	res_icon/icon-16.png \
	res_icon/icon-32.png \
	res_icon/icon-48.png \
	res_icon/icon-64.png \
	res_icon/icon-128.png \
	res_icon/icon-256.png \
	codeorb.ico

