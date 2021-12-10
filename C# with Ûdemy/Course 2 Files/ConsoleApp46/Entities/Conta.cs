using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;

using ConsoleApp46.Entities.Exceptions;

namespace ConsoleApp46.Entities
{
    class Conta
    {
        public int Numero { get; set; }
        public string Titular { get; set; }

        public double Saldo { get; set; }
        public double LimiteSaque { get; set; }

        public Conta()
        {
        }

        public Conta(int numero, string titular, double saldo, double limiteSaque)
        {
            Numero = numero;
            Titular = titular;
            Saldo = saldo;
            LimiteSaque = limiteSaque;
        }

        public void Deposito(double valor)
        {
            Saldo += valor;
            Console.WriteLine($"Novo saldo: {Saldo}");
        }
        public void Saque(double valor)
        {
            if (Saldo < valor)
                throw new ContaException("ContaException: Saldo menor que valor de saque ");
            if (valor > LimiteSaque)
                throw new ContaException("ContaException: Valor de saque maior que o Limite de saque");

            Saldo -= valor;
            Console.WriteLine($"Novo saldo: {Saldo}");
        }
    }
}
