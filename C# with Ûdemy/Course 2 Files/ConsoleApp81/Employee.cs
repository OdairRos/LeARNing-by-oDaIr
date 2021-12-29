using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;

namespace ConsoleApp81
{
    class Employee
    {

        public string name { get; set; }
        public string email { get; set; }
        public double salary { get; set; }

        public Employee(string name, string email, double salary)
        {
            this.name = name;
            this.email = email;
            this.salary = salary;
        }
    }
}
