using System;
using ConsoleApp56.Services;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;

namespace ConsoleApp56.Entities
{
    class Installment 
    {
        public DateTime Date { get; set; }
        public Double amount { get; set; }

        public Installment(DateTime date, double amount)
        {
            Date = date;
            this.amount = amount;
        }
    }
}
