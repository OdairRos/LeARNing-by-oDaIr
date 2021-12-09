using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;

namespace ConsoleApp35.Entities
{
    class Produto
    {
        public string Name { get; set; }
        public double Price { get; set; }
    
        public Produto()
        {

        }
        public Produto(string nome, double preco)
        {
            Name = nome;
            Price = preco;
        }

        

    }
}
