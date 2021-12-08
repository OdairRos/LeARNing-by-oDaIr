using System;

namespace ConsoleApp9_17
{
    class Program
    {
        static void Main(string[] args)
        {
            int[] Vetor;
            Vetor = new int[10];

            for(int i= 0; i < 10; i++)
            {
                Vetor[i] = i + 1;
                if (Vetor[i] % 2 == 0)       
                    Console.WriteLine(Vetor[i]);
            }
        }
    }
}
