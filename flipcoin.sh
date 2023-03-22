#!/bin/bash
read -p "Enter no of times to toss:"n heads_count=0
tails_count=0
for(( i=1;i<=n;i++))
do
  toss=$((RANDOM%2))
  if((toss==0))
  then
    echo "flip-$i heads"
    ((tails_count++))
  fi
done
echo "The $heads_count is $heads_count and tails count is $tails_count"
if((heads_count>tails_count))
  echo "winner is heads"
elif((tails_count>heads_count))
then
  echo "winner is tails"
else
  echo "its tie"
fi