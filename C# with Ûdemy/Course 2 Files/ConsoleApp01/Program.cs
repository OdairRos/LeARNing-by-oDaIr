using System;
using System.Globalization;

namespace ConsoleApp01
{
    class Program
    {
        static void Main(string[] args)
        {
            sbyte x = 100;
            byte y = 255;
            int z = 2111111111;
            char l = 'd';
            double d = 100.2321231;
            string NOME = "Odair";

            Console.WriteLine(d.ToString("F4"));
            Console.WriteLine($"Meu nome é {NOME} ");

            string produto1 = "Computador";
            string produto2 = "Mesa de escritório";
            byte idade = 30;
            int codigo = 5290;
            char genero = 'M';

            double preco1 = 2100;
            double preco2 = 650.50;
            double medida = 53.234567;
            Console.WriteLine("\n\nProdutos:");
            Console.WriteLine($"{produto1} cujo preço é R${preco1}");
            Console.WriteLine($"{produto2} cujo preço é R${preco2}");
            Console.WriteLine($"Registro: {idade} anos de idade, código {codigo} e genero {genero}");
            Console.WriteLine($"Medida com oito casas decimais {medida:F8}\nArredondado(três casas decimais: {medida:F3}");


        }
    }
}
