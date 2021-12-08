using System;

namespace ConsoleApp9_19
{
    class Program
    {
        static void Main(string[] args)
        {
            int n;
            int negativos = 0;
            int[,] matriz;
   
            Console.WriteLine("Digite o tamanho da matriz: ");
            n = int.Parse(Console.ReadLine());
            matriz = new int[n, n];

            for(int i= 0; i < n; i++)
            {
                for(int j=0; j < n; j++)
                {
                    Console.WriteLine("Digite o valor da posição: [" + i + " , " + j + "]");
                    matriz[i, j] = int.Parse(Console.ReadLine());
                    if (matriz[i, j] < 0)
                    {
                        negativos += 1;
                    }
                }
            }
            Console.Write("DIAGONAL PRINCIPAL: ");
            for (int i = 0; i < n; i++)
            {
                for (int j = 0; j < n; j++)
                {
   
                    if(i == j)
                    {
                        Console.Write(matriz[i, j] + " ");
                    }                    
                }
            }
            Console.WriteLine();
            Console.WriteLine("QUANTIDADE DE NEGATIVOS: " + negativos);



        }
    }
}
