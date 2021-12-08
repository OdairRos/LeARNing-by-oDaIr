using System;

namespace ConsoleApp9_15
{
    class Program
    {
        static void Main(string[] args)
        {
            int x;
            while (true)
            {
                Console.WriteLine("Valor(0-Fecha) :");
                x = int.Parse(Console.ReadLine());

                x += x;
                if (x == 0) break;
            }
        }
    }
}
