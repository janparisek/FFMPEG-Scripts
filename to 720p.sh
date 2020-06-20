#!/bin/bash
./ffmpeg -i input.mp4 -filter:v scale=1280:720 -c:a copy output.mp4
exec $SHELL