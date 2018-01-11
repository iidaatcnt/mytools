BEGIN{FS=","}
{
  close(out)
  #out="outdir/"$3".csv"
  out=$3".csv"
  print $0 >> out
}
