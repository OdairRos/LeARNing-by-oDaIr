using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;
using ConsoleApp35.Entities.Enums;

namespace ConsoleApp35.Entities
{
    class OrderItem
    {
        public int Quantidade { get; set; }
        public double Preco { get; set; }

        public Produto produto { get; set; }


        OrderItem()
        {

        }
        public OrderItem(int quantidade, double preco, string PdNome)
        {
            Quantidade = quantidade;
            Preco = preco;
            produto = new Produto(PdNome, preco);
        }

        public double SubTotal()
        {
            return Preco * Quantidade;
        }

        public override string ToString()
        {
            StringBuilder stringbuilder = new StringBuilder();
            stringbuilder.Append($"{produto.Name}, ${Preco}, Quantidade: {Quantidade}, Subtotal: {SubTotal()}");

            return stringbuilder.ToString();
        }

    }
}
