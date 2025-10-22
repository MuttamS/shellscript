#!/bin/bash

#If we want to pin number

echo "Please enter your pin number"
read PIN_NUMBER # here PIN_NUMBER is variable, If we are use this read command pin nub will display whaile entering

echo "pin entered is: $PIN_NUMBER"

#If we want did not refelect the pin number when we enter.

read -s PIN_NUMBER # If we use this -s option in read command pin number did not diplay whaile entering

echo "pin entered is: $PIN_NUMBER"

