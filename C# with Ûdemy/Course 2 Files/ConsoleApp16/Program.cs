using System;

namespace ConsoleApp16
{
    class Program
    {
        static void Main(string[] args)
        {



            ContaBanco conta;

            Console.WriteLine("Entre o numero da conta: ");
            int numero = int.Parse(Console.ReadLine());

            Console.WriteLine("Entre o titular da conta: ");
            string nome = Console.ReadLine();

            Console.WriteLine("Havera deposito inicial (s/n)");
            char deposito = char.Parse(Console.ReadLine());

            double valor = 0;
            if (deposito == 'S' || deposito == 's')
            {
                Console.WriteLine("Entre o valor do deposito inicial: ");
                valor = double.Parse(Console.ReadLine());
                conta = new ContaBanco(numero, nome, valor);
            }
            else
            {
                conta = new ContaBanco(numero, nome);
            }

            conta.GetDadosConta();

            Console.WriteLine("\nEntre com o valor para depósito: ");
            valor = double.Parse(Console.ReadLine());
            conta.Depositar(valor);

            conta.GetDadosConta();

            Console.WriteLine("\nEntre com o valor para saque: ");
            valor = double.Parse(Console.ReadLine());
            conta.Saque(valor);

            conta.GetDadosConta();
        
      
 
        }
    }
}
