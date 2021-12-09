using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;

namespace ConsoleApp37.Entities
{
    class ContaEmpresa : Conta
    {
        public double LoanLimit { get; set; }

        public ContaEmpresa()
        {
        }

        public ContaEmpresa(int number, string holder, double balance, double loanLimit) : base(number,  holder,  balance)
        {
            LoanLimit = loanLimit;
        }

        public void Loan(double amount) 
        {
            Balance += amount;
        }
    
    }
}
