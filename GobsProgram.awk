#!/bin/awk -f
BEGIN {
  print "Gob's Program:  Y/N?"
  printf "? "
}
/^[yY]/ {
  while (1) {
    print "Penus  Penus  Penus  Penus  Penus  Penus"
  }
}
/^[nN]/ {
  exit
}
/^[^yYnN]/ {
  print "Gob's Program:  Y/N?"
  printf "? "
}
