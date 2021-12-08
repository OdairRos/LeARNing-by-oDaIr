using System;

namespace ConsoleApp20
{
    class Program
    {
        static void Main(string[] args)
        {
            int n = int.Parse(Console.ReadLine());
            double soma = 0;
            Produto[] vet = new Produto[n];

            for(int i = 0; i < n; i++)
            {
                string nome = Console.ReadLine();
                double preco = double.Parse(Console.ReadLine());

                vet[i] = new Produto(nome, preco);
            }

            for(int i=0; i< n; i++)
            {
                soma += vet[i].Preco;
            }
            soma = soma / n;

            Console.WriteLine($"Media dos preços: {soma.ToString("F2")}");
        }
    }
}
