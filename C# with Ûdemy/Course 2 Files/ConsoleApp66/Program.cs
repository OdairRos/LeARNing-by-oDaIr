using System;
using System.Collections.Generic;
using ConsoleApp66.Entities;
namespace ConsoleApp66
{
    class Program
    {
        static void Main(string[] args)
        {
            HashSet<Product> a = new HashSet<Product>();
            a.Add(new Product("tv", 900.00));
            a.Add(new Product("NoteBook", 1200.00));

            HashSet<Point> b = new HashSet<Point>();
            b.Add(new Point(10, 2));
            b.Add(new Point(2, 1));

            Product prod = new Product("NoteBook", 1200.00);
            Console.WriteLine(a.Contains(prod));

            Point p = new Point(10, 2);
            Console.WriteLine(b.Contains(p));
        }
    }
}
