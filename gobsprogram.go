package main

import "fmt"

func main() {
	var answer string
	fmt.Print("\033[1;32m")
	fmt.Print("\033[40m")
	fmt.Println("Gob's Program:  Y/N?")
	fmt.Print("? ")
	fmt.Scanf("%s", &answer)

	if answer == "Y" {
		prints := 0
		for true {
			if prints < 5 {
				fmt.Print("Penus  ")
				prints++
			} else {
				fmt.Println("Penus  ")
				prints = 0
			}
		}
	}
}
