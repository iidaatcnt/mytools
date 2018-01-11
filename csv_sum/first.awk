BEGIN{
  min="9999-99-99"
  FS=","
}
{
  if(min>$1)min=$1
}
END{
  print min
}
