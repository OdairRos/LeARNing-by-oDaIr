using System;
using System.IO;
using System.Collections.Generic;
using System.Linq;
using ConsoleApp80.Entities;
using System.Globalization;
namespace ConsoleApp80
{
    class Program
    {
        //Print definition
        static void Print() { Console.WriteLine(""); }
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
            string Path = @"C:\Users\desenv07\Desktop\LeARNing by oDaIr\C# with Ûdemy\Course 2 Files\ConsoleApp80\in.txt";
            List<Product> list = new List<Product>();

            using (StreamReader sr = File.OpenText(Path))
            {
                while (!sr.EndOfStream)
                {
                    string[] line = sr.ReadLine().Split(",");
                    list.Add(new Product(line[0], double.Parse(line[1], CultureInfo.InvariantCulture)));
                }
            }

            var avg = list
                .Select(p => p.Price)
                .DefaultIfEmpty(0.0)
                .Average();

            Console.WriteLine($"Preço medio: {avg.ToString("F2",CultureInfo.InvariantCulture)}");

            var names = list
                .Where(p => p.Price < avg)
                .OrderByDescending(p => p.Nome)
                .Select(p => p.Nome)
                .ToList();

            foreach(string nome in names)
            {
                Print(nome);
            }
        }
    }
}
