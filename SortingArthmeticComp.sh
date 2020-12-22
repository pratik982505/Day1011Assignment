 
#Arithmetic Computation & Sorting

#!/bin/bash -x
#UC1
echo "enter the value of a:"
read a
echo "enter the value of b:"
read b
echo "enter value of c:"
read c

#UC2
op1=$(($a + $b * $c))
echo $op1
#UC3
op2=$(($a * $b + $c))
echo $op2
#UC4
op3=$(($c + $a / $b))
echo $op3
#UC5
op4=$(($a % $b + $c))
echo $op4
#UC6
results=()
results=($op1 $op2 $op3 $op4)

#UC7

echo the results are: ${results[@]}

#UC8
for ((i=0;i<4;i++))
do
   for((j=0;j<4-i-1;j++))
   do
       if [ ${results[j]} -gt ${results[$((j+1))]} ]
        then
        temp=${results[j]}
        results[$j]=${results[$((j+1))]}
        results[$((j+1))]=$temp 
       fi
   done
done
echo "Array in Sorting order"
echo ${results[*]}
