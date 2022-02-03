#! /bin/bash

# Flip a coin to see if I should have another beer.
# experimentaly biased. :-)

HEAD=0
TAIL=0

for x in 1 2 3 4 5 6 7 8 9 10 11 12 13 14 15 16 17 18 19 20 21
do

FLIP=$(($(($RANDOM%10))%2))

if [ $FLIP -eq 1 ]
then
echo "TAIL"
TAIL=$(($TAIL+1))
else
echo "HEAD"
HEAD=$(($HEAD+1))
fi
done
h=$(($(($HEAD*100))/21))
t=$(($(($TAIL*100))/21))

if [ $HEAD -gt $TAIL ]
then
echo "head won"  $h
else
echo "tail won"   $t
fi
