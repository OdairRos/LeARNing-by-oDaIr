using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;
using ConsoleApp40.Entities.Enums;
namespace ConsoleApp40.Entities
{
    abstract class Forma
    {
        public Color color { get; set; }

        protected Forma()
        {
        }

        public Forma(Color color)
        {
            this.color = color;
        }

        public abstract double Area();


    }
}
