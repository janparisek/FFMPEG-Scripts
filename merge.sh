#!/bin/bash
./ffmpeg -i video.mp4 -i audio.mp4 -c:v copy -c:a copy -strict experimental output.mp4
exec $SHELL