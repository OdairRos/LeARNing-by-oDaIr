using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;
using ConsoleApp57.Enums;

namespace ConsoleApp57.Entities
{
    abstract class Shape
    {
        public Color color { get; set; }

        public abstract double Area();
    }
}
