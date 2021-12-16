using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;

namespace ConsoleApp76
{
    class Product
    {
        public string Nome { get; set; }
        public double Price { get; set; }

        public Product(string nome, double price)
        {
            Nome = nome;
            Price = price;
        }
    }
}
