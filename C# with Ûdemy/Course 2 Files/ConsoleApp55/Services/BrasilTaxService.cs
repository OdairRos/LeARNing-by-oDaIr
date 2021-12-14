﻿using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;

namespace ConsoleApp55.Services
{
    class BrasilTaxService : ITaxService
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
