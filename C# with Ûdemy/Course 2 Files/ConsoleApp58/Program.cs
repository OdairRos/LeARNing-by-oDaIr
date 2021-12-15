using System;
using ConsoleApp58.Enums;
using ConsoleApp58.Entities;
namespace ConsoleApp58
{
    class Program
    {
        static void Main(string[] args)
        {
            IShape s1 = new Circle() { raio = 2.0, PI = 3.14, color = Color.white };
            IShape s2 = new Rectangle() { Largura = 3.5, Altura = 4.2, color = Color.black };
            Console.WriteLine(s1);
            Console.WriteLine(s2);
        }
    }
}
