using System;

namespace ConsoleApp9_12
{
    class Program
    {
        static void Main(string[] args)
        {
            int minutos;
            double valor;

            minutos = int.Parse(Console.ReadLine());

            if (minutos > 100)
            {
                minutos = minutos -  100;
                valor = 50 + (minutos * 2);
                Console.WriteLine("Valor a pagar: R$" + valor);
            }
            else { Console.WriteLine("Valor a pagar: R$50"); }
            
        }
    }
}
