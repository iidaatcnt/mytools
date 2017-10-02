#!/usr/bin/perl
# function: make the index of referers
# usage:
#   perl ./sumreferc.pl access.log

my $infile = $ARGV[0];
open(LOGFILE, "$infile") || die $!;

while (<LOGFILE>) {
  /^(.*) (.*) (.*) \[(.*)\] "(.*)" (.*) (.*) "(.*)" "(.*)"/;

  $httpstatus = $6;
  if ($httpstatus != 200) { next; }

  $httpreferer = $8;
  $referercount{$httpreferer}++;

}
close(FILE);

foreach $key (sort {$referercount{$a} <=> $referercount{$b}}
                keys %referercount) {
  print $referercount{$key};
  print "\t$key\n";
}

exit;
