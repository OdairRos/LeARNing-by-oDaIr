using System;

namespace ConsoleApp9_18
{
    class Program
    {
        static void Main(string[] args)
        {
            int[,] Matriz;
            Matriz = new int[3, 3];


            for (int i = 0; i < 3; i++)
            {

                for (int j = 0; j < 3; j++)
                {
                    Matriz[i, j] = i;
                    Console.Write(Matriz[i, j] + " ");
                }
                Console.WriteLine();
                

            }
        }
    }
}
