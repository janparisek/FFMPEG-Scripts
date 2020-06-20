#!/bin/bash
ffmpeg -i input.wav -q:a 5 output.mp3
exec $SHELL