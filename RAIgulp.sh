#!/bin/bash
# rai gulp 

wget -d "http://mediapolis.rai.it/relinker/relinkerServlet.htm?cont=746953&output=45" -U "iphone" -O p.txt
grep http  p.txt >temp.txt
sed -e 's/<url type="content">//g' temp.txt >temp2.txt
cat temp2.txt
sed -e 's/<\/url>//g' temp2.txt >temp.txt
dos2unix temp.txt
surce=`cat temp.txt`
echo $surce
mpv --hls-bitrate=max "$surce"
rm p.txt
rm temp.txt
rm temp2.txt
