using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;

namespace ConsoleApp37.Entities
{
    class Conta
    {
        public int Number { get; set; }
        public string Holder { get; set; }
        public double Balance { get; set; }
        
        public Conta()
        {
        }

        public Conta(int number, string holder, double balance)
        {
            Number = number;
            Holder = holder;
            Balance = balance;
        }

        public void Withdraw(double amount) { Balance -= amount; }
        public void Deposit(double amount) { Balance += amount; }



    }
}
