#!/bin/bash

#bash-2.04
for ((i=0; i<10; i++)); do echo $i; done

#bash-3.0
for i in {10..19}; do echo $i; done

for i in $(seq 20 30); do echo $i; done
