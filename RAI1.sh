#!/bin/bash

# V1.1 20210905 Public relase

wget -d "http://mediapolis.rai.it/relinker/relinkerServlet.htm?cont=2606803&output=45" -U "iphone" -O p.txt
grep content  p.txt >temp.txt
sed -e 's/<url type="content">//g' temp.txt >temp2.txt
cat temp2.txt
sed -e 's/<\/url>//g' temp2.txt >temp.txt
dos2unix temp.txt
surce=`cat temp.txt`
echo $surce

#max bitrate video
#mpv --hls-bitrate=max "$surce"

#Video --vid=1 

mpv --vid=1 "$surce"

# comment for debug
rm p.txt
rm temp.txt
rm temp2.txt


# note: mpv video audio set exmple:

#     Video --vid=1 'bitrate 2793078' (h264)
# (+) Video --vid=2 'bitrate 2137033' (h264)
#     Video --vid=3 'bitrate 1365331' (h264)
# (+) Audio --aid=1 --alang=ita (*) (aac)
#     Audio --aid=2 --alang=V.O (aac)
#     Audio --aid=3 --alang=des (aac)
#     Audio --aid=4 'bitrate 2793078' (aac)
#     Audio --aid=5 'bitrate 2137033' (aac)
#     Audio --aid=6 'bitrate 1365331' (aac)
#