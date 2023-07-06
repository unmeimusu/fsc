# list all available audio
pactl list short sources
# input one of list on the result above to script below for example mine is "ladspa_output.mbeq_1197.mbeq.monitor" without quotes
# ffmpeg audio + video
ffmpeg -f x11grab -video_size 1280x720 -framerate 30 -i :0.0 -f pulse -i ladspa_output.mbeq_1197.mbeq.monitor -preset fast -crf 22 -c:a aac -b:v 6M -pix_fmt yuv420p -b:a 128k ~/Videos/Recording-$(date +%F-%I-%M-%N).mp4
# no need to worry about the saved file, it will be saved as a new file with different timestamp automatically.
