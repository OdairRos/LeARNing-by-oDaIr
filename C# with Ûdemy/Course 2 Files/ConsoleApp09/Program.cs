using System;

namespace ConsoleApp09
{
    class Program
    {
        static void Main(string[] args)
        {
            Produto produto = new Produto();

            Console.WriteLine("Nome do produto: ");
            produto.Nome = Console.ReadLine();
            produto.Preco = 10.33;
            produto.AdcionarProdutos(20);

            produto.RemoverProdutos(10);
            Console.WriteLine(produto.ValorTotalEmEstoque());

            Console.WriteLine("Dados do produto: "+produto);
        }

    }
}
