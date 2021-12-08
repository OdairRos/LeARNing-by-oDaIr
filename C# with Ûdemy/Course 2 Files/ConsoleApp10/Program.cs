using System;

namespace ConsoleApp10
{
    class Program
    {
        static void Main(string[] args)
        {
            Retangulo retangulo = new Retangulo();

            Console.WriteLine("Digite a largura e altura do retângulo: ");
            retangulo.Largura = double.Parse(Console.ReadLine());
            retangulo.Altura = double.Parse(Console.ReadLine());

            Console.WriteLine($"Area = {retangulo.Area()}");
            Console.WriteLine($"Perimetro = {retangulo.Perimetro()}");
            

        }
    }
}
