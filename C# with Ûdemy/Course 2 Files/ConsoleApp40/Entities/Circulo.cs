using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;
using ConsoleApp40.Entities.Enums;
using ConsoleApp40.Entities;


namespace ConsoleApp40.Entities
{
    class Circulo : Forma
    {
        public double Radius { get; set; }

        public Circulo(double radius, Color color ) : base(color)
        {
            Radius = radius;
        }

        public override double Area()
        {
            return 3.14 * (Radius * Radius);
        }
    }
}
