#!/bin/bash -x
#UC1
H=0
T=0
while [ $H -le 21 -o $T -le 21 ]
do
HT=$((RANDOM%2))
        if [ HT -eq 0 ]
        then
        ((H++))

        else
        ((T++))
        fi
done
echo "H:$H & T:$T"

FlipCoinCombination

#!/bin/bash -x
H=0
T=0
for (i=1;i<=10;i++)
HT=$((RANDOM%2))
if [ HT -eq 0 ]
        then ((H++))
else ((T++))
fi
HeadTail[i]=$HT
echo ${HeadTail[@]}

