using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;
using System.Globalization;
using ConsoleApp58.Enums;

namespace ConsoleApp58.Entities
{
    class Circle : AbstractShape
    {
        public double raio { get; set; }
        public double PI { get; set; }

        public Circle(double raio, Color color) : base()
        {
            this.raio = raio;
            PI = 3.14;
            this.color = color;
        }

        public Circle()
        {
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
