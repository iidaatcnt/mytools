BEGIN{
  min="9999-99-99"
  FS=","
}
{
  if(min>$1)min=$1
  if(max<$1)max=$1
}
END{
  print "min=",min
  print "max=",max
}
