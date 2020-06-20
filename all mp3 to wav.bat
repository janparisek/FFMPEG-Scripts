for %%A IN (*.m4a) DO ffmpeg -i "%%A" -f wav -bitexact -vn -acodec pcm_s16le -ar 22050 -ac 1 "./new/%%A.wav"
cmd -k