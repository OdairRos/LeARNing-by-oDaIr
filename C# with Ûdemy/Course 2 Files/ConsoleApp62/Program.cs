using System;
using System.Collections.Generic;
using ConsoleApp62.Entities;
namespace ConsoleApp62
{
    class Program
    {
        static void Main(string[] args)
        {
            List<Product> list = new List<Product>();

            Console.Write("Enter N: ");
            int n = int.Parse(Console.ReadLine());

            for(int i = 0; i < n; i++)
            {
                Console.WriteLine($"Produto #{i + 1}");
                Console.Write("Nome: ");
                string nome = Console.ReadLine();

                Console.Write("Preço: ");
                double preco = double.Parse(Console.ReadLine());
                list.Add( new Product(nome,preco));
            }

            CalculationService cal = new CalculationService();

            Product max = cal.Max(list);

            Console.WriteLine($"Max: {max}");
        }
    }
}
