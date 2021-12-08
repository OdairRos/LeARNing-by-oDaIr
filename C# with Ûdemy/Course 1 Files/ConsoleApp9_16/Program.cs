using System;

namespace ConsoleApp9_16
{
    class Program
    {
        static void Main(string[] args)
        {
            double temp, fh;


            do
            {
                Console.WriteLine("graus C.");
                temp = double.Parse(Console.ReadLine());
                fh = 9 * (temp / (5 * 32));
                Console.WriteLine("Equivalente em Fh -> " + fh);
            } while (temp != 0);
        }
    }
} 
