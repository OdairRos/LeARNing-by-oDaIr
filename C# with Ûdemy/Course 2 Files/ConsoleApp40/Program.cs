using System;
using System.Collections.Generic;
using ConsoleApp40.Entities;
using ConsoleApp40.Entities.Enums;
namespace ConsoleApp40
{
    class Program
    {
        static void Main(string[] args)
        {
            List<Forma> lista1 = new List<Forma>();

            Console.Write("Quantas formas?: ");
            int n = int.Parse(Console.ReadLine());

            for(int i =0; i<= n; i++)
            {
                Console.WriteLine($"Forma #{i + 1} data:");
                Console.Write("Retangulo ou Circulo(R/C)");
                char ch = char.Parse(Console.ReadLine());
                Console.WriteLine("Cor (Black/Blue/Red)");
                Color color = Enum.Parse<Color>(Console.ReadLine());

                if (ch == 'r')
                {
                    Console.WriteLine("Largura: ");
                    double largura = double.Parse(Console.ReadLine());
                    Console.WriteLine("Altura: ");
                    double altura = double.Parse(Console.ReadLine());

                    lista1.Add(new Retangulo(largura, altura, color));
                }
                else
                {
                    Console.Write("Radius: ");
                    double radius = double.Parse(Console.ReadLine());

                    lista1.Add(new Circulo(radius, color));
                }

                Console.WriteLine("AREA DAS FORMAS");
            }
            foreach (Forma forma in lista1)
            {
                Console.WriteLine(forma.Area().ToString("F2"));
            }

        }
    }
}
