package main

import "fmt"
import "strings"

func main() {
	var answer string

	fmt.Print("\033[1;32;40m")
	fmt.Println("Gob's Program:  Y/N?")
	fmt.Print("? ")
	fmt.Scanf("%s", &answer)

	if strings.ToUpper(answer) == "Y" {
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
