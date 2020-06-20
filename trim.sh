#!/bin/bash
./ffmpeg -ss 00:00:57.0 -i input.mp4 -t 00:00:06.20 output.mp4
exec $SHELL