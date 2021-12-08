using System;

namespace ConsoleApp9_20
{
    class Program
    {
        static void Main(string[] args)
        {

            int M, N, soma;
            
            int[,] matriz;
            int[] vet;
        
            Console.WriteLine("Valor de M: ");
            M = int.Parse(Console.ReadLine());
            Console.WriteLine("Valor de N: ");
            N = int.Parse(Console.ReadLine());

            matriz = new int[M, N];
            vet = new int[M];

            for (int i=0; i < M; i++)
            {
                soma = 0;
                for(int j= 0;j < N; j++)
                {
                    Console.WriteLine("Digite o valor da posição: [" + i + " , " + j + "]");
                    matriz[i, j] = int.Parse(Console.ReadLine());
                    soma += matriz[i, j];
                }
                vet[i] = soma;
            }

            Console.WriteLine("SOMA DAS LINHAS: ");
        foreach (int item  in  vet){
                Console.WriteLine(item);
            }
        }
    }
}
