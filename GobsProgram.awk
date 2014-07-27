#!/bin/awk -f
BEGIN {
  print "Gob's Program:  Y/N?"
  printf "? "
}
/^[yY]/ {
  while (1) {
    printf "Penus  "
  }
}
/^[nN]/ {
  exit
}
/^[^yYnN]/ {
  print "Gob's Program:  Y/N?"
  printf "? "
}
