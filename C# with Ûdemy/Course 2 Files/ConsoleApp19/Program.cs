using System;

namespace ConsoleApp19
{
    class Program
    {
        static void Main(string[] args)
        {
            int n = int.Parse(Console.ReadLine());

            double[] vet = new double[n];

            double soma = 0;
            
            for(int i = 0; i < n; i++)
            {
                vet[i] = double.Parse(Console.ReadLine());
            }

            for (int i = 0; i < n; i++)
            {
                soma += vet[i];
            }

            Console.WriteLine($"A media dos valoes digitados é: {soma/n}");
        }
    }
}
