using System;
using ConsoleApp73.Entities;
using System.Collections.Generic;
namespace ConsoleApp73
{
    class Program
    {
        static void Main(string[] args)
        {
            List<Product> list = new List<Product>();

            list.Add(new Product("TV", 900.00));
            list.Add(new Product("Notebook", 1200.00));
            list.Add(new Product("Tablet", 450.00));

            Comparison<Product> comp = (p1,p2) => p1.Nome.ToUpper().CompareTo(p2.Nome.ToUpper());
            list.Sort(comp);

            foreach(Product n in list)
            {
                Console.WriteLine(n);
            }
        }
    }
}
