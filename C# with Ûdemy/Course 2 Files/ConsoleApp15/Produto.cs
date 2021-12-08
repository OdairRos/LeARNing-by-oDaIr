using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;

namespace ConsoleApp015
{
    class Produto
    {

        private string _nome;
        public double _preco { get; private  set;}
        public int _quantidade { get;  private set; }


        public Produto(string nome, double preco) 
        {
            _nome = nome;
            _preco = preco;
        }
        public Produto(string nome, double preco, int quantidade) 
        {
            _nome = nome;
            _preco = preco;
            _quantidade = quantidade;
        }

        public string Nome
        {
            get { return _nome; }
            set {
                if (value.Length > 0)
                    _nome = value;
            }
        }

        public double ValorTotalEmEstoque()
        {

            return _quantidade * _preco;
        }

        public void AdcionarProdutos(int quantidade)
        {
            _quantidade += quantidade;
            Console.WriteLine(_quantidade);
        }

        public void RemoverProdutos(int quantidade)
        {
            _quantidade -= quantidade;
            Console.WriteLine(_quantidade);
        }

    }
}
