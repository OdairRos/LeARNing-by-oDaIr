using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;
using System.Globalization;
namespace ConsoleApp57.Entities
{
    class Rectangle : Shape
    {

    

        public double Largura { get; set; }
        public double Altura { get; set; }

        public override double Area()
        {
            return Altura * Largura;
        }

        public override string ToString()
        {
            return $"Rectangle color: {color}, Altura: {Altura.ToString("F2", CultureInfo.InvariantCulture )}, " +
                   $"Largura: {Largura.ToString("F2", CultureInfo.InvariantCulture)}" +
                   $"\nArea = {Area().ToString("F2", CultureInfo.InvariantCulture)}";
        }
    }
}
