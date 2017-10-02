#!/usr/bin/perl
# function: make the index of referers
# usage:
#   perl ./sumreferc.pl access.log

my $infile = $ARGV[0];
open(LOGFILE, "$infile") || die $!;

while (<LOGFILE>) {
  /^(.*) (.*) (.*) \[(.*)\] "(.*)" (.*) (.*) "(.*)" "(.*)"/;

  if ($6 != 200) { next; } # http status 200
  $rcount{$8}++;

}
close(FILE);

foreach $key (sort {$rcount{$a} <=> $rcount{$b}} keys %rcount) {
  print $rcount{$key};
  print "\t$key\n";
}

exit;
