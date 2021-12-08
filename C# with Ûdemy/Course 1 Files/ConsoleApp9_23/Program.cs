using System;

namespace ConsoleApp9_23
{
    class Program
    {
        static void Main(string[] args)
        {
            Console.WriteLine("Digite o tamanho da matriz quadrada: ");
            int N = int.Parse(Console.ReadLine());
            int maior = 0;
            int[,] matriz = new int[N, N];
            int[] vet = new int[N];

            for(int i = 0; i < N; i++) {
                for (int j = 0; j < N; j++){ 
                    Console.WriteLine("Digite o valor da posição: [" + i + " , " + j + "]");
                    matriz[i, j] = int.Parse(Console.ReadLine());
                }
            }

            Console.WriteLine("Maiores valoes de cada linha: ");
            for(int i = 0; i < N; i++)
            {
                maior = matriz[i, 0];
                for(int j = 0; j < N; j++)
                {
                    if (matriz[i, j] > maior) { maior = matriz[i, j]; }
                }
                Console.WriteLine(maior);
            }
        }
    }
}
