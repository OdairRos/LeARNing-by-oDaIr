using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;
using ConsoleApp40.Entities.Enums;
namespace ConsoleApp40.Entities
{
    class Retangulo : Forma
    {
        public double Width { get; set; }
        public double Height { get; set; }

        public Retangulo(double width, double height, Color color) : base(color)
        {
            Width = width;
            Height = height;
        }

        public override double Area()
        {
            return Height * Width;
        }
    }
}
