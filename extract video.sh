#!/bin/bash
ffmpeg -i input.mkv -vcodec copy -an -f matroska output.mkv
exec $SHELL