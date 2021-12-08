using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;

namespace ConsoleApp08
{
    class Triangulo
    {
        public double A;
        public double B;
        public double C;
        public double Area;

        public void CalculaArea()
            {
                Area = ((A + B + C) / 2);
            }
    }
}
