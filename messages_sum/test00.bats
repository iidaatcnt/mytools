#!/usr/bin/env bats

@test "invoking about.sh with a nonexistent file prints an error" {
  run ./about.sh nonexistent_filename
  [ "$status" -eq 1 ]
  [ "$output" = "about.sh: no such file 'nonexistent_filename'" ]
}

@test "invoking about.sh without arguments prints usage" {
  run ./about.sh
  [ "$status" -eq 1 ]
  [ "${lines[0]}" = "usage: about.sh <filename>" ]
}
