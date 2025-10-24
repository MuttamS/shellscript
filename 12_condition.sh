#!/bin/bash

echo "please enter the number"
read NUMBER

if [ $NUMBER -lt 2 ]; then
    echo "Given number $NUMBER is not prime number"
else
    echo "Given number $NUMBER is prime number"
fi