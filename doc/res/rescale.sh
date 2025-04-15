#!/bin/sh

mkdir -p res_icon

for size in 16 32 48 64 128 256; do
	convert \
		base-icon-codeorb.png \
		-resize ${size}x${size} \
		res_icon/icon-${size}.png
done

