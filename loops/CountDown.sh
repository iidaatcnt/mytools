#!/bin/bash

i=10;while true; do echo $((i--));if [ i > 0 ];then sleep 1;done

