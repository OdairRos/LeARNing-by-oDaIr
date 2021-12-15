using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;

namespace ConsoleApp66.Entities
{
    class Product
    {

        public string Nome { get; set; }
        public double Preco { get; set; }

        public Product(string nome, double preco)
        {
            Nome = nome;
            Preco = preco;
        }

        public override int GetHashCode()
        {
            return Nome.GetHashCode() + Preco.GetHashCode();
        }

        public override bool Equals(object obj)
        {
            if (obj is not Product)
                return false;
            Product other = obj as Product;

            return Nome.Equals(other.Nome) && Preco.Equals(other.Preco);
        }
    }
}
