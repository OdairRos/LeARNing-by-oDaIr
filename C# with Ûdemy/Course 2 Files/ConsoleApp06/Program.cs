using System;

namespace ConsoleApp06
{
    class Program
    {
        static void Main(string[] args)
        {
            Console.WriteLine("Contar até quanto?\n: ");
            int cont = int.Parse(Console.ReadLine());

            for(int i=0; i <= cont; i++)
            {
                Console.Write($"{i}, ");
            }
        }
    }
}
