using System;
using System.Threading;
namespace gobsprogram
{
    class Program
    {
        static void Main(string[] args)
        {
            string output = "Penus  Penus  Penus  Penus  Penus  Penus";
            char key = ' ';
            Console.ForegroundColor = ConsoleColor.Green;
            while (key != 'Y')
            {
                Console.WriteLine("Gob's Program:  Y/N?");
                Console.Write("? ");
                key = Console.ReadKey(true).KeyChar;
                if (key.Equals('Y') || key.Equals('y'))
                {
                    Console.Write('Y');
                    Console.WriteLine();
                    while (true)
                    {
                        foreach(char theLetter in output)
                        {
                            Console.Write(theLetter);
                            Thread.Sleep(5);
                        }
                        Console.WriteLine();
                    }
                }
            }
        }
    }
}
