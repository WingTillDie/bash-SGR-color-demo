#!/bin/bash
echo -e '\e[m';clear

for i in {30..37};do
	printf '\e['$i'm''%3d' $i
done;echo -e '\e[m'

for i in {90..97};do
	printf '\e['$i'm''%3d' $i
done;echo -e '\e[m'

for i in {40..47};do
	printf '\e['$i'm''%3d' $i
done;echo -e '\e[m'

for i in {100..107};do
	printf '\e['$i'm''%3d' $i
done;echo -e '\e[m'

for i in {0..15};do
	printf '\e[48:5:'$i'm''%3d' $i
	if [ $i -eq 7 ];then
		echo
	fi
done;echo -e '\e[m'

func(){
local j=0
for i in {16..231};do
	printf '\e[48:5:'$i'm''%3d' $i
	if [ $j -eq  35 ];then
		echo -e '\e[m'
		j=0
	else
		((j++))
	fi
done
}; func

for i in $(seq 232 $((0xff)));do
	printf '\e[48:5:'$i'm''%3d' $i
done;echo -e '\e[m'

for j in {0..3};do
	for i in {0..255};do
		case $j in
		0)printf '\e[48;2;'$i';0;0m''%2x' $i
		;;1)printf '\e[48;2;0;'$i';0m''%2x' $i
		;;2)printf '\e[48;2;0;0;'$i'm''%2x' $i
		;;3)printf '\e[48;2;'$i';'$i';'$i'm''%2x' $i
		esac
	done;echo -e '\e[m'
done
