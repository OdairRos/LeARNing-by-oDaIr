using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;

namespace ConsoleApp014
{
    class Produto
    {

        private string _nome;
        private double _preco;
        private int _quantidade;


        public Produto(string nome, double preco) : this()
        {
            _nome = nome;
            _preco = preco;
        }
        public Produto(string nome, double preco, int quantidade) : this(nome, preco)
        {
            _nome = nome;
            _preco = preco;
            _quantidade = quantidade;
        }

        public Produto()
        {

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

        public string GetNome()
        {
            return _nome;
        }
        public void SetNome(string nome)
        {
            if(nome.Length > 0)  
                _nome = nome;
        }

        public double getPreco()
        {
            return _preco;

        }

        public int getQuantidade()
        {
            return _quantidade;
        }
    }
}
