using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;

namespace ConsoleApp36.Entities
{
    class ContaEmpresa : conta
    {

        public double LoanLimit { get; set; }

        public ContaEmpresa()
        {
        }

        public ContaEmpresa(int numero, string holder, double balance,double loanLimit) : base(numero, holder, balance)
        {
            LoanLimit = LoanLimit;
        }

        public void Loan(double amount)
        {
            if(amount <= LoanLimit)
            {
                Balance += amount;
            }
        }

    }
}
