using System;
using System.Collections.Generic;
namespace ConsoleApp61
{
    class Program
    {
        static void Main(string[] args)
        {

            Console.WriteLine("How many values? ");
            int vl = int.Parse(Console.ReadLine());
            PrintService<int> pr = new PrintService<int>();

            for(int i=0; i < vl; i++)
            {
                int valor = int.Parse(Console.ReadLine());
                pr.AddValue(valor);
            }

            pr.Print();
            Console.WriteLine(pr.First());
            
        }
    }
}
