using System;

namespace ConsoleApp9_21
{
    class Program
    {
        static void Main(string[] args)
        {
            int M, N;
            int[,] matriz;
            int[] vet;

            Console.WriteLine("Digite o valor de M: ");
            M = int.Parse(Console.ReadLine());
            Console.WriteLine("Digite o valor de N: ");
            N = int.Parse(Console.ReadLine());
            matriz = new int[M, N];
       

            for(int i=0; i < M; i++)
            {
                for(int j=0; j < N; j++)
                {
                    Console.WriteLine("Digite o valor da posição: [" + i + " , " + j + "]");
                    matriz[j, i] = int.Parse(Console.ReadLine());
                }
            }

            Console.WriteLine("VALORES NEGATIVOS: ");
            for (int i = 0; i < M; i++)
            {
                for (int j = 0; j < N; j++)
                {
                    if(matriz[i,j] < 0)
                    {
                        Console.WriteLine(matriz[i, j]);
                    }
                    
                }
            }



        }
    }
}
