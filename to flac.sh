#!/bin/bash
./ffmpeg -i input.wav -af aformat=s16:44100 output.flac
exec $SHELL