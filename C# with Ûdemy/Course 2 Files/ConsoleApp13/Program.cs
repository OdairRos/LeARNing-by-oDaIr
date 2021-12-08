using System;

namespace ConsoleApp013
{
    class Program
    {
        static void Main(string[] args)
        {
            Produto produto = new Produto("TV",10,200);

          
            produto.AdcionarProdutos(20);

            produto.RemoverProdutos(10);
            Console.WriteLine(produto.ValorTotalEmEstoque());

            Console.WriteLine("Dados do produto: " + produto);
        }

    }
}
