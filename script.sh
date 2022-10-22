#DISK PUPOSES
sar -P ALL 1 190|
awk '{gsub(/,/,".")} { if(length($2)!=0){printf "%s,%s\n",$2,$3} }'>>cpu.csv
#DELETE THE FIRST ROW
sed -i '1d' cpu.csv