#!/bin/bash
./ffmpeg -i source.mkv -vn -acodec copy source.ogg
sox source.ogg -r 28k -C 0 audio.ogg trim 0 03:11.2
./ffmpeg -i source.mkv -strict experimental -filter:v "crop=3840:1632:0:264" -c:v libaom-av1 -b:v 320k -t 03:11.2 -s 1280x544 -an -shortest -f matroska video.mkv
./ffmpeg -i video.mkv -i audio.ogg -c:v copy -c:a copy -strict experimental -shortest output.mkv
exec $SHELL