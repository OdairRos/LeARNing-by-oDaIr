using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;

namespace ConsoleApp62.Entities
{
    class Product : IComparable
    {
        public string Nome { get; set; }
        public double Price { get; set; }

        public Product(string nome, double price)
        {
            Nome = nome;
            Price = price;
        }

        public override string ToString()
        {
            return $"{Nome}, {Price:F2}";
        }

        public int CompareTo(object obj)
        {
            if (obj is not Product)
                throw new ArgumentException("Comparing error: argumnet is not a product");

            Product other = obj as Product;
            return Price.CompareTo(other.Price);
        }
    }
}
