# Video tips
## Video screen recording


Use vokoscreen for screen recording. 
The pause does not working very well in case of re-start after pause. Therefore restart vokoscreen and start a new session. 
The different files can be concatenate in this way 

more files.txt
file 'vokoscreen-2021-04-03_15-36-34.mkv'
file 'vokoscreen-2021-04-03_16-18-34.mkv'
file 'vokoscreen-2021-04-03_17-29-09.mkv'

ffmpeg -f concat -safe 0 -i files.txt -c copy output.mkv 


In case on noise remove follow the https://www.youtube.com/watch?v=AeOjtMOq3EU which use audacity & the openshot sw to first identify the noise/remove and then attach the clean audio to the video file.

## Editing zoom video

