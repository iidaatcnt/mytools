BEGIN{
  FS=","
}
{
  if(max<$1)max=$1
}
END{
  print max
}
