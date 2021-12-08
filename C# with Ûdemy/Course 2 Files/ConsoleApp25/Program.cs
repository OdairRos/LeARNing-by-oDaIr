using System;

namespace ConsoleApp25
{
    class Program
    {
        static void Main(string[] args)
        {
            Console.WriteLine("Digite o tamanho da matriz quadrada: ");
            int n = int.Parse(Console.ReadLine());
            int negativos = 0;
            int[,] matriz = new int[n,n];

            for(int i = 0; i < n; i++)
            {
                for(int j = 0; j < n; j++)
                {
                    Console.WriteLine($"Digite a posição ({i},{j}): ");
                    matriz[i, j] = int.Parse(Console.ReadLine());
                    if(matriz[i,j] < 0) { negativos++; }
                }
            }

            Console.WriteLine("Diagonal Principal: ");
            for (int i = 0; i < n; i++)
            {
                for (int j = 0; j < n; j++)
                {
                    if (i == j)
                    {
                        Console.Write(matriz[i, j] + " ");
                    }
                }
            }
            Console.WriteLine($"Quantidade de negativos: {negativos}");

        }
    }
}
