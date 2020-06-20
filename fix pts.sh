#!/bin/bash
./ffmpeg -i input.webm -c copy -fflags +genpts output.webm
exec $SHELL