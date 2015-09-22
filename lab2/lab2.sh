
#!/bin/bash

timeout=$(awk -F "=" '/timeout/{print $2}' config.ini)

while true
do
wget -O ~/university/lab2/index.html "http://www.tut.by" 
grep '<span class="w-weather_temt">' index.html | sed 's/<\/\?[^>]\+>//g' | sed 's/&deg;//g' | sed 's/\t//g'
sleep $timeout
done
