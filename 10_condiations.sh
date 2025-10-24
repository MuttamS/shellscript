#!/bin/bash

NUMBER=$6

if [ $NUMBER-gt 10 ]; then
    echo "Given number $NUMBER is less then 10"
else
    echo "Given number $NUMBER is greater then or equal to 10"
fi