using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;
using ConsoleApp54.Entities;


namespace ConsoleApp54.Services
{
    class BrasilTaxService
    {
        public double Tax(double amount)
        {
            if (amount <= 100.0)
                return amount * 0.2;
            else
                return amount * 0.15;
        }
    }
}
