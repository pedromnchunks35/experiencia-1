#DISK PUPOSES
sar -b 1 190|
awk '{gsub(/,/,".")} { if(length($4)!=0){printf "%s\n",$4} }'>>disco.csv
#DELETE THE FIRST ROW
sed -i '1d' disco.csv