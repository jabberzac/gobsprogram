object GobsProgram { 
	def main(args: Array[String]): Unit = {
		print("\033[1;32;40m")
		println("Gob's Program: Y/N?")
		val doGob = readLine("?")
		if(doGob == "Y") { while(true) println("PENUS PENUS PENUS PENUS PENUS") } 
	}
}