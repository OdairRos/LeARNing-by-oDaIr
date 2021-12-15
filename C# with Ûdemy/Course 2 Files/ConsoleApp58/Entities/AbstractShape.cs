using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;
using ConsoleApp58.Enums;
namespace ConsoleApp58.Entities
{
   abstract class AbstractShape : IShape
    {
        public Color color { get; set; }

        public abstract double Area();
    }
}
