using System;
using System.Collections.Generic;
using System.Linq;

using ConsoleApp79.Entities;

namespace ConsoleApp79
{
    class Program
    {
        static void Print<T>(string message, IEnumerable<T> collection)
        {
            Console.WriteLine(message);
            foreach (T obj in collection)
                Console.WriteLine(obj);
            Console.WriteLine();
        }
        //Print definition
        static void Print() { Console.WriteLine(""); }
        //String First param Print
        static void Print(string value) { Console.WriteLine(value); }
        static void Print<T>(string message, T value) { Console.WriteLine($"{message}{value}"); }
        static void Print(string value1, int value2) { Console.WriteLine($"{value1}{value2}"); }
        static void Print(string value1, double value2) { Console.WriteLine($"{value1}{value2}"); }
        static void Print<T>(T value, string message) { Console.WriteLine($"{value}{message}"); }
        static void Print<T>(T value) { Console.WriteLine(value); }
        static void Print(int value) { Console.WriteLine(value); }
        static void Print(double value) { Console.WriteLine(value); }
        static void Print(bool value) { Console.WriteLine(value); }
        static void Print(char value) { Console.WriteLine(value); }
        

        // Input defininition
        static string Input(string message) { Console.Write(message); return Console.ReadLine(); }


        static void Main(string[] args)
        {
            
            Category c1 = new Category() { id = 1, name = "Tools", tier = 2 };
            Category c2 = new Category() { id = 2, name = "Computers", tier = 1 };
            Category c3 = new Category() { id = 3, name = "Electronics", tier = 1 };

            List<Product> products = new List<Product>()
            {
                new Product() { id = 1, name="Computador", price = 1100.0, category= c2},
                new Product() { id = 2, name="Hamme"     , price = 90.0  , category= c1},
                new Product() { id = 3, name="TV"        , price = 1700.0, category= c3},
                new Product() { id = 4, name="Notebook"  , price = 1300.0, category= c2},
                new Product() { id = 5, name="Saw"       , price = 80.0  , category= c1},
                new Product() { id = 6, name="Tablet"    , price = 700.0 , category= c2},
                new Product() { id = 7, name="Camera"    , price = 700.0 , category= c3},
                new Product() { id = 8, name="Printer"   , price = 350.0 , category= c3},
                new Product() { id = 9, name="MacBook"   , price = 1800.0, category= c2},
                new Product() { id = 10, name="Sound Bar", price = 700.0 , category= c3},
                new Product() { id = 11, name="Level"    , price = 70.0  , category= c1}};

            var r1 = products
                .Where(p => p.category.tier == 1 && p.price < 900.0);
            var r2 = products
                .Where(p => p.category.tier == 2)
                .Select(p => p.name);
            var r3 = products
                .Where(p => p.name[0] == 'C' || p.name[0] == 'c')
                .Select(p => new
                {p.name, p.price, CategoryName = p.category.name});
            var r4 = products
                .Where(p => p.category.tier == 1)
                .OrderBy(p => p.price)
                .ThenBy(p => p.name);
            var r5 = r4
                .Skip(2)
                .Take(4);
            var r6 = products
                .First();
            var r7 = products
                .Where(p => p.price > 3000)
                .FirstOrDefault();
            var r8 = products
                .Where(p => p.id == 2)
                .SingleOrDefault();
            var r9 = products
                .Where(p => p.id == 29)
                .SingleOrDefault();
            var r10 = products
                .Max(p => p.price);
            var r11 = products
                .Min(p => p.price);
            var r12 = products
                .Where(p => p.category.id == 1)
                .Sum(p => p.price);
            var r13 = products
                .Where(p => p.category.id == 1)
                .Select(p => p.price)
                .DefaultIfEmpty(0.0)
                .Average();
            var r14 = products
                .Where(p => p.category.id == 1)
                .Select(p => p.price)
                .Aggregate(0.0,(x, y) => x + y);
            var r16 = products.GroupBy(p => p.category);
            foreach(IGrouping<Category, Product> group in r16)
            {
                Print("Category" + group.Key.name + ":");
                foreach(Product p in group)
                {
                    Print(p);
                }
                Print();
            }


            Print("TIER 1 AND PRICE < 900:", r1);
            Print("NAMES OF PRODUCTS FROM TOOLS:", r2);
            Print("PRODUCTS NAME START WITH LETTER 'C' :", r3);
            Print("TIER 1 ORDER BY PRICE THEN DEFAULT: ", r4);
            Print("TIER 1 ORDER BY PRICE THEN BY NAME SKIP 2 TAKE 4", r5);

            Print(r11, " é um Numero");
            Print("First: ", r6);
            Print("First or default" + r7);
            Print("Single: " + r8);
            Print("Single or default test1" + r9);
            Print("Max price " + r10);
            Print("Min price " + r11);
            Print("Sum of prices category 1:", r12);
            Print("Category 5 Avarege prices ", r13);
            Print("Category 1 aggregate sum " + r14);

            string a = Input("Digite um valor: ");
            Print(a);

        }
    }
}
