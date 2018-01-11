#!/bin/bash

#echo $1
awk -F'\\[|\\]' '{print substr($2,1,14)}' $1
