using System;

namespace ConsoleApp9_24
{
    class Program
    {
        static void Main(string[] args)
        {
            Console.WriteLine("Digite o tamanho da matriz quadradada");
            int N = int.Parse(Console.ReadLine());
            int[,] matriz = new int[N, N];
            int soma = 0;
            for(int i=0; i <N; i++)
            {
                for(int j=0; j< N; j++)
                {
                    Console.WriteLine("Digite o valor da posição: [" + i + " , " + j + "]");
                    matriz[i, j] = int.Parse(Console.ReadLine());
                    if(j == i)
                    {
                        soma += matriz[i,j];
                    }
                }
            }

            Console.Write(soma);

        }
    }
}
