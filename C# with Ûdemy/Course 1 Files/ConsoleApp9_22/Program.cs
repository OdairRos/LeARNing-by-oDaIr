using System;

namespace ConsoleApp9_22
{
    class Program
    {
        static void Main(string[] args)
        {
            Console.WriteLine("Digite otamanho da matriz quadrada: ");
            int N = int.Parse(Console.ReadLine());

            int[,] matriz = new int[N, N];
            int[] vet = new int[N];
            for(int i= 0; i < N; i++)
            {
                for(int j = 0; j < N; j++)
                {
                    Console.WriteLine("Digite o valor da posição: [" + i + " , " + j + "]");
                    matriz[i,j] = int.Parse(Console.ReadLine());
                    vet[i] += matriz[i, j];
                }
            }

            Console.WriteLine("SOMA DA S LINHAS: ");
            foreach(int item in vet) { Console.WriteLine(item); }
        }

    }
}
