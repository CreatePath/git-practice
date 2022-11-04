#!/bin/sh
weight=$1
height=$(echo "scale=3; $2 / 100.0" | bc)
bmi=$(echo "scale=3; $weight / $height^2"|bc)
if [ "$(echo "$bmi < 18.5" | bc)" -eq 1 ]; then
  echo "저체중입니다."
elif [ "$(echo "$bmi < 23" | bc)" -eq 1 ]; then
  echo "정상체중입니다."
else
  echo "과체중입니다."
fi
exit 0
