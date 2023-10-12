#!/bin/sh

IMAGE_NAME="ilspycmd"

docker  build                \
	-t "$IMAGE_NAME"     \
	.
