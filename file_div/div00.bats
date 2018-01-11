#!/usr/bin/env bats

setup() {
  cat /dev/null > piyo@cntsv.jp.csv
  cat /dev/null > hoge@cntsv.jp.csv
}
@test "case 01" {
  run awk -f div.awk input.csv
  [ "$status" -eq 0 ]
}

