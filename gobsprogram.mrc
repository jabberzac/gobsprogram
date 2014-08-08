; Gobs Program in mIRC scripting language

on *:START: {
  /clear
  //color 1 $rgb(0,0,0)
  //color 14 $rgb(0,255,0)
  /color Background 1
  /echo Gob's Program:  Y/N?
}

on *:INPUT:*: {
  if ($1- == y) {
    :penus
    /echo Penus  Penus  Penus  Penus  Penus  Penus
    /goto penus
  }
  else {
    /exit
  }
}
