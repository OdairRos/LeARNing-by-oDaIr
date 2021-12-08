using System;

namespace ConsoleApp04
{
    class Program
    {
        static void Main(string[] args)
        {
            int n1 = int.Parse(Console.ReadLine());

            if (n1 > 10 || n1 < 0) Console.WriteLine($"{n1}");

            else if (n1 < 10 && n1 > 0) Console.WriteLine($"{n1} é menor que 10");

            else Console.WriteLine($"{n1} é igual a 10");
        }
    }
}
