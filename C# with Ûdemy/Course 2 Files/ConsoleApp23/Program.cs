using System;
using System.Collections.Generic;
namespace ConsoleApp23
{
    class Program
    {
        static void Main(string[] args)
        {
            List<string> lista1 = new List<string>();
            List<string> lista2 = new List<string>();

            lista1.Add("Odair");
            lista1.Add("Sandro");
            lista1.Add("Bob");
            lista1.Insert(3, "Alex");
            lista1.Insert(1, "Odair2");

            string s1 = lista1.Find(x => x[0] == 'O');
            Console.WriteLine("Primeiro A: " + s1);

            s1 = lista1.FindLast(x => x[0] == 'O');
            Console.WriteLine("Ultimo A: " + s1);


        }
    }
}
