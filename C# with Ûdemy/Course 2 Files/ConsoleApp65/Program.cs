using System;
using System.Collections.Generic;
namespace ConsoleApp65
{
    class Program
    {
        static void Main(string[] args)
        {
            SortedSet<int> a = new SortedSet<int> { 0, 2, 3, 4, 5, 6, 7, 8 };
            SortedSet<int> b = new SortedSet<int> { 8, 9, 14, 13, 1, 3, 10 };

            // union
            SortedSet<int> c = new SortedSet<int>(a);
            c.UnionWith(b);
            PrintCollection(c);

            // intersection
            SortedSet<int> d = new SortedSet<int>(a);
            d.IntersectWith(b);
            PrintCollection(d);

            //difference
            SortedSet<int> e = new SortedSet<int>(a);
            e.ExceptWith(b);
            PrintCollection(e);
        }

        static void PrintCollection<T>(IEnumerable<T> collection)
        {
            foreach (T obj in collection)
                Console.Write(obj + " ");
            
            Console.WriteLine();
        }
    }
}
