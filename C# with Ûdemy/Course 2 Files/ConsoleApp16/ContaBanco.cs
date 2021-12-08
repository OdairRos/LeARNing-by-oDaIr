using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;

namespace ConsoleApp16
{
    class ContaBanco
    {
        public int NumeroConta { get; private set; }
        public string Nome { get;   set; }
        public double Saldo { get; private set; }

        public ContaBanco(int numeroConta, string nome)
        {
            NumeroConta = numeroConta;
            Nome = nome;
        }

        public ContaBanco(int numeroConta, string nome, double valor) : this(numeroConta, nome)
        {
            Depositar(valor);
        }

        public void GetDadosConta()
        {
            Console.WriteLine($"Dados da conta\nConta: {NumeroConta}, Titular: {Nome}, Saldo: ${Saldo.ToString("F2")}");
        }

        public void Depositar(double valor)
        {
            Saldo += valor;
        }
        
        public void Saque(double valor)
        {
            Saldo -= (valor + 5);
        }

    }
}
