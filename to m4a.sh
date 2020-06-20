#!/bin/bash
ffmpeg -i input.wav -acodec alac output.m4a
exec $SHELL