#!/usr/bin/env bats

@test "case 01" {
  run awk -f first_last_count.awk input.csv
  [ "${lines[0]}" = "min  = 2017/07/11 22:45:06" ]
  [ "${lines[1]}" = "max  = 2017/07/12 22:45:15" ]
  [ "${lines[2]}" = "count= 10" ]
}

