using System;

namespace ConsoleApp03
{
    class Program
    {
        static void Main(string[] args)
        {
            int n1 = int.Parse(Console.ReadLine());
            char letra = char.Parse(Console.ReadLine());
            double doub = double.Parse(Console.ReadLine());

            int idade;
            string nome;
            char sexo;
            float altura;

            
            string[] conjunto = Console.ReadLine().Split(" ");
            nome = conjunto[0];
            sexo = char.Parse(conjunto[1]);
            idade = int.Parse(conjunto[2]);
            altura = float.Parse(conjunto[3]);

            Console.WriteLine(n1);
            Console.WriteLine(letra);
            Console.WriteLine(doub);
        }
    }
}
