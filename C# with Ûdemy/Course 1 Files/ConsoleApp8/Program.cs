using System;
namespace ConsoleApp8
{
    class Program
    {
        static void Main(string[] args)
        {
            double area, largura, comprimento, precoM2;

            Console.WriteLine("Largura: ");
            largura = double.Parse(Console.ReadLine());

            Console.WriteLine("Comprimento: ");
            comprimento = double.Parse(Console.ReadLine());

            Console.WriteLine("Preço m²: ");
            precoM2 = double.Parse(Console.ReadLine());

            area = largura * comprimento;

            precoM2 *= area;
            Console.WriteLine("AREA = " + area.ToString("F2"));
            Console.WriteLine("PREÇO = " + precoM2.ToString("F2"));
        }
    }
}
