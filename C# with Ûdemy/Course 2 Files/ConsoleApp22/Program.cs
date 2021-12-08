using System;

namespace ConsoleApp22
{
    class Program
    {
        static void Main(string[] args)
        {
            int soma = Calculadora.soma(10, 20, 30, 40);
            Console.WriteLine(soma);

            int x = 10;
           Calculadora.triplica(ref x);
           Console.WriteLine(x);
        }
    }
}
