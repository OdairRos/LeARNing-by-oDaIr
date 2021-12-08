using System;

namespace ConsoleApp9_25
{
    class Program
    {
        static void Main(string[] args)
        {
            int M, N;

            Console.WriteLine("Valor de N: ");
            N = int.Parse(Console.ReadLine());
            Console.WriteLine("Valor de M: ");
            M = int.Parse(Console.ReadLine());

            int[,] matrizA = new int[N, M];
            int[,] matrizB = new int[N, M];
            int[,] matrizC = new int[N, M];

            for (int i = 0; i < N; i++)
            {
                for (int j = 0; j < M; j++)
                {
                    Console.WriteLine("Digite o valor da posição: [" + i + " , " + j + "]");
                    matrizA[i, j] = int.Parse(Console.ReadLine());
                }
            }
            Console.WriteLine("============= MATRIZ 2 =============");
            for (int i = 0; i < N; i++)
            {
                for (int j = 0; j < M; j++)
                {
                    Console.WriteLine("Digite o valor da posição: [" + i + " , " + j + "]");
                    matrizB[i, j] = int.Parse(Console.ReadLine());
                }
            }

            for (int i = 0; i <N; i++)
            {
                for(int j = 0; j < M; j++)
                {
                    matrizC[i, j] = matrizA[i, j] + matrizB[i, j];
                    Console.Write(matrizC[i, j] + " ");
                }
                Console.WriteLine();
            }
        }
    }
}
