using System;

namespace ConsoleApp015
{
    class Program
    {
        static void Main(string[] args)
        {
            Produto produto = new Produto("TV", 500, 10);
            produto.Nome = "Mesa";

            Console.WriteLine(produto.Nome);

        }

    }
}
