using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;

namespace ConsoleApp37.Entities
{
    class ContaPoupança : Conta
    {
        public double InterestRate { get; set; }

        public ContaPoupança()
        {
        }

        public ContaPoupança(int number, string holder, double balance, double interestRate) : base(number,holder,balance)
        {
            InterestRate = interestRate;
        }

        public void UpdateBalance()
        {

            Balance += Balance * InterestRate;
        }
    }
}
