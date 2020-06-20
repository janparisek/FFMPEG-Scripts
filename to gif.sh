#!/bin/bash
./ffmpeg -y -i input.mp4 -vf scale=640:-1:flags=lanczos,palettegen palette.png
./ffmpeg -i input.mp4 -i palette.png -filter_complex "scale=640:-1:flags=lanczos[x];[x][1:v]paletteuse" output.gif
exec $SHELL