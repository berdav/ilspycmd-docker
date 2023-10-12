#!/bin/sh

set -eu

IMAGE_NAME=ilspycmd

docker run                       \
	--name "$IMAGE_NAME"     \
	--hostname "$IMAGE_NAME" \
	-v .:/docker             \
	--rm -ti                 \
	"$IMAGE_NAME"
