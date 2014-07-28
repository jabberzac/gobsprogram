#!/usr/bin/env python
from __future__ import print_function
import platform


def os_colour():
    if platform.system() == 'Windows':
        print('@echo off')
        print('color 0A')
    elif platform.system() == 'Linux':
        print("\033[1;32;40m")


def main():
    os_colour()
    print("Gob's Program:  Y/N?")
    choice = raw_input('? ')
    if choice.upper() == 'Y':
            while True:
                print('Penus  ' * 5 + 'Penus')

if __name__ == '__main__':
    main()
