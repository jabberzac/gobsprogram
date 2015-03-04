#include <stdio.h>
#include <iostream>

int main() {
    std::cout << "\033[1;32mGob's Program:  Y/N?" << std::endl << "? ";

    char choice = getchar();
    char caseChoice = tolower(choice);

    if (caseChoice == 'y') {
        while (1) {
            std::cout << "Penus  " << std::flush;
            usleep(10000);
        }
    }

    return 0;
}
