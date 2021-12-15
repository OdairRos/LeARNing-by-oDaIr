using System;
using ConsoleApp57.Entities;
using ConsoleApp57.Enums;
namespace ConsoleApp57
{
    class Program
    {
        static void Main(string[] args)
        {
            Shape s1 = new Circle() { raio = 2.0, PI = 3.14, color = Color.White };
            Shape s2 = new Rectangle() { Largura = 3.5, Altura = 4.2, color = Color.Black };
            Console.WriteLine(s1);
            Console.WriteLine(s2);
        }
    }
}

