using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;

namespace ConsoleApp38.Entities
{
    class OutsourcedEmployee : Employee
    {
        public double AdditionlCharge { get; set; }

        public OutsourcedEmployee()
        {
        }

        public OutsourcedEmployee(string name, int hours, double valuePerHour, double additionlCharge) : base( name,  hours,  valuePerHour)
        {
            AdditionlCharge = additionlCharge;
        }

        public override double  Payment()
        {
            double money = base.Payment();
           
            money += (AdditionlCharge *110 / 100);
            return money;
        }
    }
}