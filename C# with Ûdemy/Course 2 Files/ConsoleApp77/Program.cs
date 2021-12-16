using System;
using System.Collections.Generic;
using System.Linq;

namespace ConsoleApp77
{
    class Program
    {
        static void Main(string[] args)
        {
            List<Product> list1 = new List<Product>();

            list1.Add(new Product("TV", 900.00));
            list1.Add(new Product("Mouse", 50.00));
            list1.Add(new Product("Tablet", 350.50));
            list1.Add(new Product("HD Case", 80.90));

            Func<Product, string> func = NomeUpper;

            List<string> resultado = list1.Select(func).ToList();

            foreach (string s in resultado)
                Console.WriteLine(s);
        }

        static string NomeUpper(Product p)
        {
            return p.Nome.ToUpper();
        }
    }
}
