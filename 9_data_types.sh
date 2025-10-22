#!/bin/bash

#everything in shell is cosidered as string
NUMBER1=100
NUMBER2=200

SUM=$(($NUMBER1+$NUMBER2))

echo "Sum is: ${SUM}"

LEADERS=("Modi" "Puthin" "Trudo" "Trump")

echo "All Leaders: ${LEADERS[@]}"
