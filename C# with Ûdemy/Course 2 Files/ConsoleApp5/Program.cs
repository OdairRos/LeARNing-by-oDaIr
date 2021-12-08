using System;

namespace ConsoleApp05
{
    class Program
    {
        // Main : 
        static void Main(string[] args)
        {

            int x = 0; int i = 0;
            int[] vet = new int[100];

            do
            {
                Console.Write($"x vale: {x}\nAlterar para(0-sair): ");
                x = int.Parse(Console.ReadLine());
                vet[i] = x;
                i++;
            } while (x != 0) ;

            Console.WriteLine($"{Maior(vet)} foi o maior valor digitado");
        }

        // Functions :
        static int Maior(int[] vet)
        {
            int maior = vet[0];

            foreach(int num in vet)
            {
                if(num > maior)
                    maior = num;
            }

            return maior;
        }
    }
}
