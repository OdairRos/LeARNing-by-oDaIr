using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;

namespace ConsoleApp36.Entities
{
    class conta
    {
        public int Numero { get; private set; }
        public string Holder { get; private set; }

        public double Balance { get; private protected set; }

        public conta()
        {

        }
        public conta(int numero, string holder, double balance)
        {
            Numero = numero;
            Holder = holder;
            Balance = balance;
        }

        public void Sacar(double amount) {
            Balance = Balance - amount;
        }

        public void Deposito(double amount)
        {
            Balance = Balance + amount;
        }
    }
}
