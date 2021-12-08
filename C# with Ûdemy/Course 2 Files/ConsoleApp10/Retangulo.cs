using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;

namespace ConsoleApp10
{
    class Retangulo
    {
        public double Largura;
        public double Altura;

        public double Area()
        {
            return (Altura * Largura);
        }

        public double Perimetro()
        {
            return (Altura+Largura)*2;
        }
       
    }
}
