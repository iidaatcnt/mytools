#!/usr/bin/env bats

@test "case 01" {
  run awk -f first.awk input.csv
  [ "$output" = "2017/07/11 22:45:06" ]
}

