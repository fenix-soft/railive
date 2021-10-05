#!/bin/bash
#
# RAI5.sh V1.3 (debug mode) 20210905 Public relase
# 
# note: the debug mode in this script is necessary because the rai relinker of this channel changes often. The video presets change constantly and are not consistent with the bitrate streams of the other channels. The extrapolation format changes often, you may have it in xml format (sometimes even poorly formatted) or in json. The debug mode is necessary to quickly understand where the problem lies in the event of a malfunction! 



wget -d "http://mediapolis.rai.it/relinker/relinkerServlet.htm?cont=395276&output=45" -U "iphone" -O p.txt
echo " "
echo "DEBUG MODE...start! extract media url.. "
grep http  p.txt >temp.txt
sed -e 's/<url type="content">//g' temp.txt >temp2.txt
echo " "
cat temp2.txt
echo " "
sed -e 's/<\/url>//g' temp2.txt >temp3.txt
echo " "
cat temp3.txt
echo " "
echo " "
grep hls  temp3.txt >temp.txt

echo " "
dos2unix temp.txt
surce=`cat temp.txt`
echo " "
echo "Find_Media_Url: "$surce
echo " "
echo "DEBUG MODE END.. start play stream.. "
echo " "

#max bitrate video
#mpv --hls-bitrate=max "$surce"

#Video --vid=2 'bitrate 2137033' (h264)
mpv --vid=2 "$surce"

rm p.txt
rm temp.txt
rm temp2.txt
rm temp3.txt
