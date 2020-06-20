for %%A IN (*.mkv) DO ffmpeg -i "%%A" -vn "./new/%%A.wav"
for %%A IN (*.mp4) DO ffmpeg -i "%%A" -vn "./new/%%A.wav"
for %%A IN (*.ogg) DO ffmpeg -i "%%A" -vn "./new/%%A.wav"
for %%A IN (*.aac) DO ffmpeg -i "%%A" -vn "./new/%%A.wav"
for %%A IN (*.webm) DO ffmpeg -i "%%A" -vn "./new/%%A.wav"
cmd -k