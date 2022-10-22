#DISK PUPOSES
free --mega -s 1 -c 190|
awk '{gsub(/,/,".")} { if(length($5)!=0){printf "%s\n",$5} }'>>cache.csv
#DELETE THE FIRST ROW
sed -i '1d' cache.csv