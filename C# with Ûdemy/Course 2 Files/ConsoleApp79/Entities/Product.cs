using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;

namespace ConsoleApp79.Entities
{
    class Product
    {
        public int id { get; set; }
        public string name { get; set; }
        public double price { get; set; }
        public Category category { get; set; }

        public override string ToString()
        {
            return $"{id}, {name}, {price:F2}, {category.name}, {category.tier}";
        }
    }
}
