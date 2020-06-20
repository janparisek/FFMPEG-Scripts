#!/bin/bash
./ffmpeg -i input.mp4 -f wav -bitexact -vn -acodec pcm_f32le -ar 48000 -ac 1 output.wav
exec $SHELL