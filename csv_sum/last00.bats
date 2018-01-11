#!/usr/bin/env bats

@test "case 01" {
  run awk -f last.awk input.csv
  [ "$output" = "2017/07/12 22:45:15" ]
}

