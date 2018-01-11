#!/bin/bash

# 22:27:42 hello workd
# 22:27:43 hello workd
# 22:27:44 hello workd
# 22:27:45 hello workd

while true; do echo "hello workd";sleep 1;done | gawk '{print strftime("%H:%M:%S"), $0}'

