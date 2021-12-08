using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;

namespace ConsoleApp013
{
    class Produto
    {

        public string Nome;
        public double Preco;
        public int Quantidade;

        public Produto(string Nome) 
        {
            this.Nome = Nome;
        }
        public Produto(string nome, double preco) : this()
        {
            Nome = nome;
            Preco = preco;
        }
        public Produto(string nome, double preco, int quantidade) : this(nome, preco)
        {
            Nome = nome;
            Preco = preco;
            Quantidade = quantidade;
        }

        public Produto()
        {

        }

        public double ValorTotalEmEstoque()
        {

            return Quantidade * Preco;
        }

        public void AdcionarProdutos(int quantidade)
        {
            Quantidade += quantidade;
            Console.WriteLine(Quantidade);
        }

        public void RemoverProdutos(int quantidade)
        {
            Quantidade -= quantidade;
            Console.WriteLine(Quantidade);
        }

        public override string ToString()
        {
            return Nome
                + ", $ "
                + Preco.ToString("F2")
                + ", "
                + Quantidade
                + " Unidades, Total: $ "
                + ValorTotalEmEstoque().ToString("F2");
        }
    }
}
