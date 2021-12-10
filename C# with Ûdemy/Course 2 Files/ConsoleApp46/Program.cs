using System;
using ConsoleApp46.Entities;
using ConsoleApp46.Entities.Exceptions;
namespace ConsoleApp46
{
    class Program
    {
        static void Main(string[] args)
        {
            try
            {

            
                Console.Write("Digite os dados da conta: \nNumero: ");
                int numero = int.Parse(Console.ReadLine());

                Console.Write("Titular: ");
                string titular = Console.ReadLine();

                Console.Write("Saldo Inicial: ");
                double inicial = double.Parse(Console.ReadLine());

                Console.Write("Limite de saque: ");
                double limite = double.Parse(Console.ReadLine());

                Conta conta = new Conta(numero, titular, inicial, limite);

                Console.Write("Quantia para saque: ");
                double valor = double.Parse(Console.ReadLine());

                conta.Saque(valor);
            }
            catch(ContaException e)
            {
                Console.WriteLine(e.Message);
            }
            catch (Exception)
            {
                Console.WriteLine("Erro inesperado");
            }
        }
    }
}
