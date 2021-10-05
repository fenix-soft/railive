#!/bin/bash
# V1.1 20210905 Public relase

wget -d "http://mediapolis.rai.it/relinker/relinkerServlet.htm?cont=308709&output=45" -U "iphone" -O p.txt
grep content  p.txt >temp.txt
sed -e 's/<url type="content">//g' temp.txt >temp2.txt
cat temp2.txt
sed -e 's/<\/url>//g' temp2.txt >temp.txt
dos2unix temp.txt
surce=`cat temp.txt`
echo $surce

#max bitrate video
#mpv2 --hls-bitrate=max "$surce"

#Video --vid=2 'bitrate 2137033' (h264)
mpv --vid=2 "$surce"


rm p.txt
rm temp.txt
rm temp2.txt