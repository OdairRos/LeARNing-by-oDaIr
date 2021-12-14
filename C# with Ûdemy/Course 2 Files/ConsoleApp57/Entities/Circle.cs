using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;
using ConsoleApp57.Entities;
using ConsoleApp57.Enums;
using System.Globalization;
namespace ConsoleApp57.Entities
{
    class Circle : Shape
    {

        public double raio { get; set; }
        public double PI { get; set; }

        public Circle(double raio)
        {
            this.raio = raio;
            PI = 3.14;
        }

        public override double Area()
        {
            return PI * (raio * raio);
        }

        public override string ToString()
        {
            return $"Circle color = {color}, raio = {raio.ToString("F2", CultureInfo.InvariantCulture)} Area = {Area().ToString("F2", CultureInfo.InvariantCulture)}";
        }
    }
}
