using System;
using System.IO;
using System.Collections.Generic;
using ConsoleApp68.Entities;
namespace ConsoleApp68
{
    class Program
    {
        static void Main(string[] args)
        {
            HashSet<students> a = new HashSet<students>();
            HashSet<students> b = new HashSet<students>();
            HashSet<students> c = new HashSet<students>();

            Console.Write("How many students for course A: ");
            int qte = int.Parse(Console.ReadLine());
            for(int i =0; i < qte; i++)
            {
                int cod = int.Parse(Console.ReadLine());
                a.Add(new students(cod));
            }

            Console.Write("How many students for course B: ");
            qte = int.Parse(Console.ReadLine());
            for (int i = 0; i < qte; i++)
            {
                int cod = int.Parse(Console.ReadLine());
                b.Add(new students(cod));
            }

            Console.Write("How many students for course C: ");
            qte = int.Parse(Console.ReadLine());
            for (int i = 0; i < qte; i++)
            {
                int cod = int.Parse(Console.ReadLine());
                c.Add(new students(cod));
            }

            HashSet<students> d = new HashSet<students>(a);
            d.UnionWith(b);
            d.UnionWith(c);

            Console.WriteLine($"Total students: {d.Count}");

        }
    }
}
