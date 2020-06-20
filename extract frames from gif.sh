#!/bin/bash
./ffmpeg -i image.gif -vsync 0 ./render/image%02d.png
exec $SHELL