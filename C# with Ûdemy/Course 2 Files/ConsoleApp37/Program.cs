using System;
using ConsoleApp37.Entities;
namespace ConsoleApp37
{
    class Program
    {
        static void Main(string[] args)
        {
            Conta acc = new Conta(1001, "Odair", 10.0);
            ContaEmpresa accEmp = new ContaEmpresa(1001, "Oda", 100.0, 2000);

            // UPCASTING 

            Conta acc1 = accEmp;
            Conta acc2 = new ContaEmpresa(2000, "Tob", 0.29, 2000);
            Conta acc3 = new ContaPoupança(3000, "Anna", 20.12, 109.12);

            //DOWNCASTING
            ContaEmpresa acc4 = (ContaEmpresa) acc2;
            acc4.Loan(100);
        }
    }
}
